<?php
/**
 * Base object that all others should inherit from.
 * This object provides a number of helper methods that patch over PHP's deficiencies.
 * 
 * @package sapphire
 * @subpackage core
 */
class Object {
	
	/**
	 * @var string $class
	 */
	public $class;
	
	/**
	 * @var array $statics
	 */
	protected static $statics = array();
	
	/**
	 * @var array $static_cached
	 */
	protected static $static_cached = array();
	
	/**
	 * This DataObjects extensions, eg Versioned.
	 * @var array
	 */
	protected $extension_instances = array();

	/**
	 * Extensions to be used on this object. An array of extension names
	 * and parameters eg:
	 * 
	 * 	static $extensions = array(
	 * 		"Hierarchy",
	 * 		"Versioned('Stage', 'Live')",
	 * 	);
	 * 
	 * @var array
	 */
	public static $extensions = null;

	/**
	 * @var array $extraStatics
	 */
	protected static $extraStatics = array();
	
	/**
	 * @var array $classConstructed
	 */
	protected static $classConstructed = array();

	/**
	 * @var array $extraMethods
	 */
	protected static $extraMethods = array();
	
	/**
	 * @var array $builtInMethods
	 */
	protected static $builtInMethods = array();

    /**
    * @var array $custom_classes Use the class in the value instead of the class in the key
    */
    private static $custom_classes = array();

	/**
	 * @var array $strong_classes
	 */
	private static $strong_classes = array();
	
	/**
	 * @var array $uninherited_statics
	 */
	private static $uninherited_statics = array();

	function __construct() {
		$this->class = get_class($this);	

		// Set up the extensions
		if($extensions = $this->stat('extensions')) {
			foreach($extensions as $extension) {
				$instance = eval("return new $extension;");
				$instance->setOwner($this);
				$this->extension_instances[$instance->class] = $instance;
			}
		}

		if(!isset(Object::$classConstructed[$this->class])) {
			$this->defineMethods();
			Object::$classConstructed[$this->class] = true;
		}
	}
	
	/**
	 * Calls a method.
	 * Extra methods can be hooked to a class using
	 */
	public function __call($methodName, $args) {
		$lowerMethodName = strtolower($methodName);
		if(isset(Object::$extraMethods[$this->class][$lowerMethodName])) {
			$config = Object::$extraMethods[$this->class][$lowerMethodName];
			if(isset($config['parameterName'])) {
				if(isset($config['arrayIndex'])) $obj = $this->{$config['parameterName']}[$config['arrayIndex']];
				else $obj = $this->{$config['parameterName']};

				if($obj) {
					return call_user_func_array(array(&$obj, $methodName), $args);
				} else {
					if($this->destroyed) user_error("Attempted to call $methodName on destroyed '$this->class' object", E_USER_ERROR);
					else user_error("'$this->class' object doesn't have a parameter $config[parameterName]($config[arrayIndex]) to pass control to.  Perhaps this object has been mistakenly destroyed?", E_USER_WARNING);
				}

			} else if(isset($config['wrap'])) {
				array_unshift($args, $config['methodName']);
				return call_user_func_array(array(&$this, $config['wrap']), $args);

			} else if(isset($config['function'])) {
				$function = $config['function'];
				return $function($this, $args);

			} else if($config['function_str']) {
				$function = Object::$extraMethods[$this->class][strtolower($methodName)]['function'] = create_function('$obj, $args', $config['function_str']);
				return $function($this, $args);

			} else {
				user_error("Object::__call() Method '$methodName' in class '$this->class' an invalid format: " . var_export(Object::$extraMethods[$this->class][$methodName],true), E_USER_ERROR);
			}
		} else {
			user_error("Object::__call() Method '$methodName' not found in class '$this->class'", E_USER_ERROR);
		}
	}

	/**
	 * This function allows you to overload class creation methods, so certain classes are
	 * always created correctly over your system.
	 *
	 * @param oldClass = the old classname you want to replace with.
	 * @param customClass = the new Classname you wish to replace the old class with.
	 * @param strong - If you want to force a replacement of a class then we use a different array
	 * e.g for use in singleton classes.
	 */
    public static function useCustomClass( $oldClass, $customClass,$strong = false ) {
        if($strong){
        	self::$strong_classes[$oldClass] = $customClass;
		}else{
			self::$custom_classes[$oldClass] = $customClass;
		}
    }

    public static function getCustomClass( $oldClass ) {
    	if( array_key_exists($oldClass, self::$custom_classes) )
    		return self::$custom_classes[$oldClass];
    	else{
     		return $oldClass;
		}
    }

	/**
	 * Create allows us to override the standard classes of sapphire with our own custom classes.
	 * create will load strong classes firstly for singleton level and database interaction, otherwise will
	 * use the fallback custom classes.
	 * To set a strong custom class to overide an object at for say singleton use, use the syntax
	 *  Object::useCustomClass('Datetime','SSDatetime',true);
	 * @param className - The classname you want to create
	 * @param args -  Up to 9 arguments you wish to pass on to the new class
	 */
    public static function create( $className, $arg0 = null, $arg1 = null, $arg2 = null, $arg3 = null, $arg4 = null, $arg5 = null, $arg6 = null, $arg7 = null, $arg8 = null ) {

		$useStrongClassName =  isset(self::$strong_classes[$className]);
		$useClassName = isset(self::$custom_classes[$className]);

		if($useStrongClassName){
			$classToCreate = self::$strong_classes[$className];
		}elseif($useClassName){
			$classToCreate = self::$custom_classes[$className];
		}

		$hasStrong = isset(self::$strong_classes[$className]) && class_exists(self::$strong_classes[$className]);
		$hasNormal = isset(self::$custom_classes[$className]) && class_exists(self::$custom_classes[$className]);

		if( !isset($classToCreate) || (!$hasStrong && !$hasNormal)){
		  	 $classToCreate = $className;
		}
        return new $classToCreate( $arg0, $arg1, $arg2, $arg3, $arg4, $arg5, $arg6, $arg7, $arg8 );
    }


	/**
	 * Strong_create is a function to enforce a certain class replacement
	 * e.g Php5.2's latest introduction of a namespace conflict means we have to replace
	 * all instances of Datetime with SSdatetime.
	 * this allows us to seperate those, and sapphires classes
	 * @param className -  The class you wish to create.
	 * @param args - pass up to 8 arguments to the created class.
	 */
	public static function strong_create( $className, $arg0 = null, $arg1 = null, $arg2 = null, $arg3 = null, $arg4 = null, $arg5 = null, $arg6 = null, $arg7 = null, $arg8 = null ) {
		$useStrongClassName =  isset(self::$strong_classes[$className]);
		if($useStrongClassName){
			$classToCreate = self::$strong_classes[$className];
		}
		if( !isset($classToCreate) || !class_exists( self::$strong_classes[$className])){
		  	 $classToCreate = $className;
		}
        return new $classToCreate( $arg0, $arg1, $arg2, $arg3, $arg4, $arg5, $arg6, $arg7, $arg8 );
	}

	/**
	 * Returns true if the given method exists.
	 */
	public function hasMethod($methodName) {
		if(method_exists($this, $methodName)) return true;

		$methodName = strtolower($methodName);
		if(!isset($this->class)) $this->class = get_class($this);
		/*
		if(!isset(Object::$builtInMethods['_set'][$this->class])) $this->buildMethodList();

		if(isset(Object::$builtInMethods[$this->class][$methodName])) return true;
		*/
		if(isset(Object::$extraMethods[$this->class][$methodName])) return true;
		return false;
	}

	/**
	 * Add the all methods from a given parameter to this object.
	 * This is used for extensions.
	 * @param parameterName The name of the parameter.  This parameter must be instanciated with an item of the correct class.
	 * @param arrayIndex If parameterName is an array, this can be an index.  If null, we'll assume the value is all that is needed.
	 */
	protected function addMethodsFrom($parameterName, $arrayIndex = null) {
		$obj = isset($arrayIndex) ? $this->{$parameterName}[$arrayIndex] : $this->$parameterName;
		if(!$obj) user_error("Object::addMethodsFrom: $parameterName/$arrayIndex", E_USER_ERROR);
		// Hack to fix Fatal error: Call to undefined method stdClass::allMethodNames()
		if(method_exists($obj, 'allMethodNames')) {
			$methodNames = $obj->allMethodNames(true);
			foreach($methodNames as $methodName) {
				Object::$extraMethods[$this->class][strtolower($methodName)] = array("parameterName" => $parameterName, "arrayIndex" => $arrayIndex);
			}
		}
	}

	/**
	 * Add a 'wrapper method'.
	 * For example, Thumbnail($arg, $arg) can be defined to call generateImage("Thumbnail", $arg, $arg)
	 */
	protected function addWrapperMethod($methodName, $wrapperMethod) {
		Object::$extraMethods[$this->class][strtolower($methodName)] = array("wrap" => $wrapperMethod, "methodName" => $methodName);
	}

	/**
	 * Create a new method
	 * @param methodName The name of the method
	 * @param methodCode The PHP code of the method, in a string.  Arguments will be contained
	 * in an array called $args.  The object will be $obj, not $this.  You won't be able to access
	 * any protected methods; the method is actually contained in an external function.
	 */
	protected function createMethod($methodName, $methodCode) {
		Object::$extraMethods[$this->class][strtolower($methodName)] = array("function_str" => $methodCode);
	}

	/**
	 * Return the names of all the methods on this object.
	 * param includeCustom If set to true, then return custom methods too.
	 */
	function allMethodNames($includeCustom = false) {
		if(!$this->class) $this->class = get_class($this);

		if(!isset(Object::$builtInMethods['_set'][$this->class])) $this->buildMethodList();

		if($includeCustom && isset(Object::$extraMethods[$this->class])) {
			return array_merge(Object::$builtInMethods[$this->class], array_keys(Object::$extraMethods[$this->class]));
		} else {
			return Object::$builtInMethods[$this->class];
		}
	}

	function buildMethodList() {
		if(!$this->class) $this->class = get_class($this);
		$reflection = new ReflectionClass($this->class);

		$methods = $reflection->getMethods();
		foreach($methods as $method) {
			$name = $method->getName();
			$methodNames[strtolower($name)] = $name;
		}
		Object::$builtInMethods[$this->class] = $methodNames;
		Object::$builtInMethods['_set'][$this->class] = true;
	}

	/**
	 * This constructor will be called the first time an object of this class is created.
	 * You can overload it with methods for setting up the class - for example, extra methods.
	 */
	protected function defineMethods() {
		if($this->extension_instances) foreach($this->extension_instances as $i => $instance) {
			$this->addMethodsFrom('extension_instances', $i);
		}

		if(isset($_REQUEST['debugmethods']) && isset(Object::$builtInMethods[$this->class])) {
			Debug::require_developer_login();
			echo "<h2>Methods defined for $this->class</h2>";
			foreach(Object::$builtInMethods[$this->class] as $name => $info) {
				echo "<li>$name";
			}
		}
	}

	/**
	 * This method lets us extend a built-in class by adding pseudo-static variables to it.
	 * 
	 * @param string $class Classname
	 * @param array $statics Statics to add, with keys being static property names on the class
	 * @param boolean $replace Replace the whole variable instead of merging arrays 
	 */
	static function addStaticVars($class, $statics, $replace = false) {
		if(empty(Object::$extraStatics[$class])) {
			Object::$extraStatics[$class] = (array)$statics;
		} elseif($replace) {
			Object::$extraStatics[$class] = $statics;
		} else {
			$ar1 = (array)Object::$extraStatics[$class];
			$ar2 = (array)$statics;
			Object::$extraStatics[$class] = array_merge_recursive($ar1, $ar2);
		}
	}

	/**
	 * Set an uninherited static variable
	 */
	function set_uninherited($name, $val) {
		return Object::$uninherited_statics[$this->class][$name] = $val;
	}
	
	/**
	 * Get an uninherited static variable
	 */
	function uninherited($name, $builtIn = false) {
		// Copy a built-in value into our own array cache.  PHP's static variable support is shit.
		if($builtIn) {
			$val = $this->stat($name);
			$val2 = null;

			// isset() can handle the case where a variable isn't defined; more reliable than reflection
			$propertyName = get_parent_class($this) . "::\$$name";
			$val2 = eval("return isset($propertyName) ? $propertyName : null;");

			return ($val != $val2) ? $val : null;
		}

		return isset(Object::$uninherited_statics[$this->class][$name]) ? Object::$uninherited_statics[$this->class][$name] : null;
	}

	/**
	 * Get a static variable.
	 * 
	 * @param string $name
	 * @param boolean $uncached
	 * @return mixed
	 */
	function stat($name, $uncached = false) {
		if(!$this->class) $this->class = get_class($this);

		if(!isset(Object::$static_cached[$this->class][$name]) || $uncached) {
			$classes = ClassInfo::ancestry($this->class);
			foreach($classes as $class) {
				if(isset(Object::$extraStatics[$class][$name])) {
					$extra = Object::$extraStatics[$class][$name];
					if(!is_array($extra)) return $extra;
					break;
				}
			}
			$stat = eval("return {$this->class}::\$$name;");
			Object::$statics[$this->class][$name] = isset($extra) ? array_merge($extra, (array)$stat) : $stat;
			Object::$static_cached[$this->class][$name] = true;
		}

		return Object::$statics[$this->class][$name];
	}
	/**
	 * Set a static variable
	 */
	function set_stat($name, $val) {
		Object::$statics[$this->class][$name] = $val;
		Object::$static_cached[$this->class][$name] = true;
	}
	
	/**
	 * Returns true if this object "exists", i.e., has a sensible value.
	 * Overload this in subclasses.
	 * For example, an empty DataObject record could return false.
	 *
	 * @return boolean
	 */
	public function exists() {
		return true;
	}

	function parentClass() {
		return get_parent_class($this);
	}
	
	/**
	 * Wrapper for PHP's is_a()
	 * 
	 * @param string $class
	 * @return boolean
	 */
	function is_a($class) {
		return is_a($this, $class);
	}

	public function __toString() {
		return $this->class;
	}
	
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// EXTENSION METHODS
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	/**
	 * Invokes a method on the object itself, or proxied through a decorator.
	 * 
	 * This method breaks the normal rules of inheritance, and aggregates everything
	 * in the returned result. If the invoked methods return void, they are still recorded as
	 * empty array keys.
	 * 
	 * @todo find a better way of integrating inheritance rules
	 *
	 * @param unknown_type $funcName
	 * @param unknown_type $arg
	 */
	public function invokeWithExtensions($funcName, $arg=null) {
		$results = array();
		if (method_exists($this, $funcName)) {
			$results[] = $this->$funcName($arg);
		}
		$extras = $this->extend($funcName, $arg);
		if ($extras) {
			return array_merge($results, $extras);
		} else {
			return $results;	
		}
	}
	
	/**
	 * Run the given function on all of this object's extensions. Note that this method
	 * originally returned void, so if you wanted to return results, you're hosed.
	 * 
	 * Currently returns an array, with an index resulting every time the function is called.
	 * Only adds returns if they're not NULL, to avoid bogus results from methods just
	 * defined on the parent decorator. This is important for permission-checks through
	 * extend, as they use min() to determine if any of the returns is FALSE.
	 * As min() doesn't do type checking, an included NULL return would fail the permission checks.
	 * 
	 * @param string $funcName The name of the function.
	 * @param mixed $arg An Argument to be passed to each of the extension functions.
	 */
	public function extend($funcName, &$arg1=null, &$arg2=null, &$arg3=null, &$arg4=null, &$arg5=null, &$arg6=null, &$arg7=null) {
		$arguments = func_get_args();
		array_shift($arguments);
		
		if($this->extension_instances) {
			$returnArr = array();
			foreach($this->extension_instances as $extension) {
				if($extension->hasMethod($funcName)) {
					$return = $extension->$funcName($arg1, $arg2, $arg3, $arg4, $arg5, $arg6, $arg7);
					if($return !== NULL) $returnArr[] = $return;
				}
			}
			return $returnArr;
		}
	}
	
	/**
	 * Get an extension on this DataObject
	 * 
	 * @param string $name Classname of the Extension (e.g. 'Versioned')
	 * 
	 * @return DataObjectDecorator The instance of the extension
	 */
	public function extInstance($name) {
		if(isset($this->extension_instances[$name])) {
			return $this->extension_instances[$name];
		}
	}
	
	/**
	 * Returns true if the given extension class is attached to this object
	 * 
	 * @param string $requiredExtension Classname of the extension
	 * 
	 * @return boolean True if the given extension class is attached to this object
	 */
	public function hasExtension($requiredExtension) {
		return isset($this->extension_instances[$requiredExtension]) ? true : false;
	}

	/**
	 * Add an extension to the given object.
	 * This can be used to add extensions to built-in objects, such as role decorators on Member 
	 */
	public static function add_extension($className, $extensionName) {
		Object::addStaticVars($className, array(
			'extensions' => array(
				$extensionName,
			),
		));
	}

	public static function remove_extension($className, $extensionName) {
		Object::$extraStatics[$className]['extensions'] = array_diff(Object::$extraStatics[$className]['extensions'], array($extensionName));
	}
	
	/**
	 * Loads a current cache from the filesystem, if it can.
	 *
	 * @param string $cachename The name of the cache to load
	 * @param int $expire The lifetime of the cache in seconds
	 * @return mixed The data from the cache, or false if the cache wasn't loaded
	 */
	protected function loadCache($cachename, $expire = 3600) {
		$cache_dir = TEMP_FOLDER;
		$cache_path = $cache_dir . "/" . $this->sanitiseCachename($cachename);
		if((!isset($_GET['flush']) || $_GET['flush']!=1) && (@file_exists($cache_path) && ((@filemtime($cache_path) + $expire) > (time())))) {
			return @unserialize(file_get_contents($cache_path));
		}
		return false;
	}
	
	/**
	 * Saves a cache to the file system
	 *
	 * @param string $cachename The name of the cache to save
	 * @param mixed $data The data to cache
	 */
	protected function saveCache($cachename, $data) {
		$cache_dir = TEMP_FOLDER;
		$cache_path = $cache_dir . "/" . $this->sanitiseCachename($cachename);
		$fp = @fopen($cache_path, "w+");
		if(!$fp) {
			return; // Throw an error?
		}
		@fwrite($fp, @serialize($data));
		@fclose($fp);
	}
	
	/**
	 * Makes a cache name safe to use in a file system
	 *
	 * @param string $cachename The cache name to sanitise
	 * @return string the sanitised cache name
	 */
	protected function sanitiseCachename($cachename) {
		// Replace illegal characters with underscores
		$cachename = str_replace(array('~', '.', '/', '!', ' ', "\n", "\r", "\t", '\\', ':', '"', '\'', ';'), '_', $cachename);
		return $cachename;
	}
	
	/**
	 * Caches the return value of a method.
	 *
	 * @param callback $callback The method to cache
	 * @param int $expire The lifetime of the cache
	 * @param string|int $id An id for the cache
	 * @return mixed The cached return of the method
	 */
	public function cacheToFile($callback, $expire = 3600, $id = false) {
		if(!$this->class) {
			$this->class = get_class($this);
		}
		if(!method_exists($this->class, $callback)) {
			user_error("Class {$this->class} doesn't have the method $callback.", E_USER_ERROR);
		}
		$cachename = $this->class . "_" . $callback;
		if($id) {
			$cachename .= "_" . (string)$id;
		}
		if(($data = $this->loadCache($cachename, $expire)) !== false) {
			return $data;
		}
		// No cache to use
		$data = $this->$callback();
		if($data === false) {
			// Some problem with function. Didn't give anything to cache. So don't cache it.
			return false;
		}
		$this->saveCache($cachename, $data);
		return $data;
	}
	
	/**
	 * Caches the return value of a method. Passes args to the method as well.
	 *
	 * @param callback $callback The method to cache
	 * @param array $args The arguments to pass to the method
	 * @param int $expire The lifetime of the cache
	 * @param string|int $id An id for the cache
	 * @return mixed The cached return of the method
	 */
	public function cacheToFileWithArgs($callback, $args = array(), $expire = 3600, $id = false) {
		if(!$this->class) {
			$this->class = get_class($this);
		}
		if(!method_exists($this->class, $callback)) {
			user_error("Class {$this->class} doesn't have the method $callback.", E_USER_ERROR);
		}
		$cachename = $this->class . "_" . $callback;
		if($id) {
			$cachename .= "_" . (string)$id;
		}
		if(($data = $this->loadCache($cachename, $expire)) !== false) {
			return $data;
		}
		// No cache to use
		$data = call_user_func_array(array($this, $callback), $args);
		if($data === false) {
			// Some problem with function. Didn't give anything to cache. So don't cache it.
			return false;
		}
		$this->saveCache($cachename, $data);
		return $data;
	}
}
?>