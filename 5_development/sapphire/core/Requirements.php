<?php

/**
 * Requirements tracker, for javascript and css.
 * @todo Document the requirements tracker, and discuss it with the others.
 * @package sapphire
 * @subpackage view
 */
class Requirements {
	/**
	 * Enable combining of css/javascript files.
	 *
	 * @var boolean
	 */
	private static $combined_files_enabled = true;
	public static function set_combined_files_enabled($enable) {
		self::$combined_files_enabled = (bool) $enable;
	}
	
	public static function get_combined_files_enabled() {
		return self::$combined_files_enabled;
	}

	/**
	 * Instance of requirements for storage
	 *
	 * @var Requirements
	 */
	private static $backend = null;
	public static function backend() {
		if(!self::$backend) {
			self::$backend = new Requirements_Backend();

		}
		return self::$backend;
	}
	
	/**
	 * Setter method for changing the Requirements backend
	 *
	 * @param Requirements $backend
	 */
	public static function set_backend(Requirements_Backend $backend) {
		self::$backend = $backend;
	}

	
	/**
	 * Register the given javascript file as required.
	 * 
	 * See {@link Requirements_Backend::javascript()} for more info
	 * 
	 */
	static function javascript($file) {		
		self::backend()->javascript($file);
	}
	
	
	/**
	 * Add the javascript code to the header of the page
	 * 
	 * See {@link Requirements_Backend::customScript()} for more info
	 * @param script The script content
	 * @param uniquenessID Use this to ensure that pieces of code only get added once.
	 */
	static function customScript($script, $uniquenessID = null) {
		self::backend()->customScript($script, $uniquenessID);
	}

	/**
	 * Include custom CSS styling to the header of the page.
	 * 
	 * See {@link Requirements_Backend::customCSS()}
	 * 
	 * @param string $script CSS selectors as a string (without <style> tag enclosing selectors).
	 * @param int $uniquenessID Group CSS by a unique ID as to avoid duplicate custom CSS in header
	 */
	static function customCSS($script, $uniquenessID = null) {
		self::backend()->customCSS($script, $uniquenessID);
	}
	
	/**
	 * Add the following custom code to the <head> section of the page.
	 * See {@link Requirements_Backend::insertHeadTags()}
	 * 
	 * @param string $html
	 * @param string $uniquenessID
	 */
	static function insertHeadTags($html, $uniquenessID = null) {
		self::backend()->insertHeadTags($html, $uniquenessID);
	}

	 
	
	/**
	 * Load the given javascript template with the page.
	 * See {@link Requirements_Backend::javascriptTemplate()}
	 * 
	 * @param file The template file to load.
	 * @param vars The array of variables to load.  These variables are loaded via string search & replace.
	 */
	static function javascriptTemplate($file, $vars, $uniquenessID = null) {
		self::backend()->javascriptTemplate($file, $vars, $uniquenessID);
	}
	
	/**
	 * Register the given stylesheet file as required.
	 * See {@link Requirements_Backend::css()}
	 * 
	 * @param $file String Filenames should be relative to the base, eg, 'jsparty/tree/tree.css'
	 * @param $media String Comma-separated list of media-types (e.g. "screen,projector") 
	 * @see http://www.w3.org/TR/REC-CSS2/media.html
	 */
	static function css($file, $media = null) {
		self::backend()->css($file, $media);
	}
	
	/**
	 * Register the given "themeable stylesheet" as required. See {@link Requirements_Backend::themedCSS()}
	 * 
	 * @param $name String The identifier of the file.  For example, css/MyFile.css would have the identifier "MyFile"
	 * @param $media String Comma-separated list of media-types (e.g. "screen,projector") 
	 */
	static function themedCSS($name, $media = null) {
		return self::backend()->themedCSS($name, $media);
	}
		
	/**
	 * Clear either a single or all requirements.
	 * Caution: Clearing single rules works only with customCSS and customScript if you specified a {@uniquenessID}. 
	 * 
	 * See {@link Requirements_Backend::clear()}
	 * 
	 * @param $file String
	 */
	static function clear($fileOrID = null) {
		self::backend()->clear($fileOrID);
	}

	/**
	 * Blocks inclusion of a specific file
	 * See {@link Requirements_Backend::block()}
	 *
	 * @param unknown_type $fileOrID
	 */
	static function block($fileOrID) {
		self::backend()->block($fileOrID);
	}

	/**
	 * Removes an item from the blocking-list.
	 * See {@link Requirements_Backend::unblock()}
	 * 
	 * @param string $fileOrID
	 */
	static function unblock($fileOrID) {
		self::backend()->unblock($fileOrID);
	}

	/**
	 * Removes all items from the blocking-list.
	 * See {@link Requirements_Backend::unblock_all()}
	 */
	static function unblock_all() {
		self::backend()->unblock_all();
	}
	
	
	/**
	 * Restore requirements cleared by call to Requirements::clear
	 * See {@link Requirements_Backend::restore()}
	 */
	static function restore() {
		self::backend()->restore();
	}
	
	/**
	 * Update the given HTML content with the appropriate include tags for the registered
	 * requirements. 
	 * See {@link Requirements_Backend::includeInHTML()} for more information.
	 * 
	 * @param string $templateFilePath Absolute path for the *.ss template file
	 * @param string $content HTML content that has already been parsed from the $templateFilePath through {@link SSViewer}.
	 * @return string HTML content thats augumented with the requirements before the closing <head> tag.
	 */
	static function includeInHTML($templateFile, $content) {
		return self::backend()->includeInHTML($templateFile, $content);
	}
	
	static function include_in_response(HTTPResponse $response) {
		return self::backend()->include_in_response($response);
	}
	
	/**
	 * Automatically includes the necessary lang-files from the module.
	 * 
	 * See {@link Requirements_Backend::process_i18n_javascript()} for more info.
	 */
	protected static function process_i18n_javascript() {
		return self::backend()->process_i18n_javascript();
	}
	
	/**
	 * Concatenate several css or javascript files into a single dynamically generated file.
	 * See {@link Requirements_Backend::combine_files()} for more info.
	 *
	 * @param string $combinedFileName
	 * @param array $files
	 */
	static function combine_files($combinedFileName, $files) {
		self::backend()->combine_files($combinedFileName, $files);
	}
	
	/**
	 * Returns all combined files.
	 * See {@link Requirements_Backend::get_combine_files()}
	 * 
	 * @return array
	 */
	static function get_combine_files() {
		return self::backend()->get_combine_files();
	}
	
	/**
	 * Deletes all dynamically generated combined files from the filesystem. 
	 * See {@link Requirements_Backend::delete_combine_files()}
	 * 
	 * @param string $combinedFileName If left blank, all combined files are deleted.
	 */
	static function delete_combined_files($combinedFileName = null) {
		return self::backend()->delete_combined_files($combinedFileName);
	}
	

	/**
	 * Re-sets the combined files definition. See {@link Requirements_Backend::clear_combined_files()}
	 */
	static function clear_combined_files() {
		self::backend()->clear_combined_files();
	}
		
	/**
	 * See {@link combine_files()}.
 	 */
	static function process_combined_files() {
		return self::backend()->process_combined_files();
	}

	/**
	 * Returns all custom scripts
	 * See {@link Requirements_Backend::get_custom_scripts()}
	 *
	 * @return array
	 */
	static function get_custom_scripts() {
		return self::backend()->get_custom_scripts();
	}
	
	/**
	 * Set whether you want to write the JS to the body of the page or 
	 * in the head section 
	 * 
	 * @see Requirements_Backend::set_write_js_to_body()
	 * @param boolean
	 */
	static function set_write_js_to_body($var) {
		self::backend()->set_write_js_to_body($var);
	}
	
	static function debug() {
		return self::backend()->debug();
	}

}

class Requirements_Backend {
		/**
	 * Paths to all required .js files relative to the webroot.
	 * 
	 * @var array $javascript
	 */
	protected $javascript = array();

	/**
	 * Paths to all required .css files relative to the webroot.
	 * 
	 * @var array $css
	 */
	protected $css = array();

	/**
	 * All custom javascript code that is inserted
	 * directly at the bottom of the HTML <head> tag.
	 *
	 * @var array $customScript
	 */
	protected $customScript = array();

	/**
	 * All custom CSS rules which are inserted
	 * directly at the bottom of the HTML <head> tag. 
	 *
	 * @var array $customCSS
	 */
	protected $customCSS = array();

	/**
	 * All custom HTML markup which is added before
	 * the closing <head> tag, e.g. additional metatags.
	 * This is preferred to entering tags directly into 
	 */
	protected $customHeadTags = array();

	/**
	 * Remembers the filepaths of all cleared Requirements
	 * through {@link clear()}.
	 * 
	 * @usedby {@link restore()}
	 *
	 * @var array $disabled
	 */
	protected $disabled = array();

	/**
	 * The filepaths (relative to webroot) or
	 * uniquenessIDs of any included requirements
	 * which should be blocked when executing {@link inlcudeInHTML()}.
	 * This is useful to e.g. prevent core classes to modifying
	 * Requirements without subclassing the entire functionality.
	 * Use {@link unblock()} or {@link unblock_all()} to revert changes.
	 * 
	 * @var array $blocked
	 */
	protected $blocked = array();
	
	/**
	 * See {@link combine_files()}.
	 * 
	 * @var array $combine_files
	 */
	public $combine_files = array();
	
	/**
	 * Using the JSMin library to minify any
	 * javascript file passed to {@link combine_files()}.
	 *
	 * @var boolean
	 */
	public $combine_js_with_jsmin = true;
	
	/**
	 * Put all javascript includes at the bottom of the template
	 * before the closing <body> tag instead of the <head> tag.
	 * This means script downloads won't block other HTTP-requests,
	 * which can be a performance improvement.
	 * Caution: Doesn't work when modifying the DOM from those external
	 * scripts without listening to window.onload/document.ready
	 * (e.g. toplevel document.write() calls).
	 *
	 * @see http://developer.yahoo.com/performance/rules.html#js_bottom
	 *
	 * @var boolean
	 */
	public $write_js_to_body = true;

	/**
	 * Set whether you want the files written to the head or the body. It
	 * writes to the body by default which can break some scripts
	 *
	 * @param boolean
	 */
	public function set_write_js_to_body($var) {
		$this->write_js_to_body = $var;
	}
	/**
	 * Register the given javascript file as required.
	 * Filenames should be relative to the base, eg, 'sapphire/javascript/loader.js'
	 */
	
	public function javascript($file) {
		$this->javascript[$file] = true;
	}
	
	/**
	 * Returns an array of all included javascript
	 *
	 * @return array
	 */
	public function get_javascript() {
		return array_keys(array_diff_key($this->javascript,$this->blocked));
	}
	
	/**
	 * Add the javascript code to the header of the page
	 * @todo Make Requirements automatically put this into a separate file :-)
	 * @param script The script content
	 * @param uniquenessID Use this to ensure that pieces of code only get added once.
	 */
	public function customScript($script, $uniquenessID = null) {
		if($uniquenessID)
			$this->customScript[$uniquenessID] = $script;
		else {
			$this->customScript[] = $script;		
		}
		$script .= "\n";
	}
	
	/**
	 * Include custom CSS styling to the header of the page.
	 *
	 * @param string $script CSS selectors as a string (without <style> tag enclosing selectors).
	 * @param int $uniquenessID Group CSS by a unique ID as to avoid duplicate custom CSS in header
	 */
	function customCSS($script, $uniquenessID = null) {
		if($uniquenessID)
			$this->customCSS[$uniquenessID] = $script;
		else {
			$this->customCSS[] = $script;		
		}
	}
	
	/**
	 * Add the following custom code to the <head> section of the page.
	 *
	 * @param string $html
	 * @param string $uniquenessID
	 */
	function insertHeadTags($html, $uniquenessID = null) {
		if($uniquenessID)
			$this->customHeadTags[$uniquenessID] = $html;
		else {
			$this->customHeadTags[] = $html;		
		}
		
	}
	
	/**
	 * Load the given javascript template with the page.
	 * @param file The template file to load.
	 * @param vars The array of variables to load.  These variables are loaded via string search & replace.
	 */
	function javascriptTemplate($file, $vars, $uniquenessID = null) {
		$script = file_get_contents(Director::getAbsFile($file));
		foreach($vars as $k => $v) {
			$search[] = '$' . $k;
			$replace[] = str_replace("\\'","'", Convert::raw2js($v));
		}
		$script = str_replace($search, $replace, $script);
		$this->customScript($script, $uniquenessID);
	}
	
	/**
	 * Register the given stylesheet file as required.
	 * 
	 * @param $file String Filenames should be relative to the base, eg, 'jsparty/tree/tree.css'
	 * @param $media String Comma-separated list of media-types (e.g. "screen,projector") 
	 * @see http://www.w3.org/TR/REC-CSS2/media.html
	 */
	function css($file, $media = null) {
		$this->css[$file] = array(
			"media" => $media
		);
	}
	
	function get_css() {
		return array_diff_key($this->css, $this->blocked);
	}
	
	/**
	 * Needed to actively prevent the inclusion of a file,
	 * e.g. when using your own prototype.js.
	 * Blocking should only be used as an exception, because
	 * it is hard to trace back. You can just block items with an
	 * ID, so make sure you add an unique identifier to customCSS() and customScript().
	 * 
	 * @param string $fileOrID
	 */
	function block($fileOrID) {
		$this->blocked[$fileOrID] = $fileOrID;
	}
	
	/**
	 * Clear either a single or all requirements.
	 * Caution: Clearing single rules works only with customCSS and customScript if you specified a {@uniquenessID}. 
	 * 
	 * @param $file String
	 */
	function clear($fileOrID = null) {
		if($fileOrID) {
			foreach(array('javascript','css', 'customScript', 'customCSS') as $type) {
				if(isset($this->{$type}[$fileOrID])) {
					$this->disabled[$type][$fileOrID] = $this->{$type}[$fileOrID];
					unset($this->{$type}[$fileOrID]);
				}
			}
		} else {
			$this->disabled['javascript'] = $this->javascript;
			$this->disabled['css'] = $this->css;
			$this->disabled['customScript'] = $this->customScript;
			$this->disabled['customCSS'] = $this->customCSS;
		
			$this->javascript = array();
			$this->css = array();
			$this->customScript = array();
			$this->customCSS = array();
			$this->customHeadTags = array();
		}
	}
	
	/**
	 * Removes an item from the blocking-list.
	 * CAUTION: Does not "re-add" any previously blocked elements.
	 * @param string $fileOrID
	 */
	function unblock($fileOrID) {
		if(isset($this->blocked[$fileOrID])) unset($this->blocked[$fileOrID]);
	}
	/**
	 * Removes all items from the blocking-list.
	 */
	static function unblock_all() {
		self::backend()->blocked = array();
	}
	
	/**
	 * Restore requirements cleared by call to Requirements::clear
	 */
	function restore() {
		$this->javascript = $this->disabled['javascript'];
		$this->css = $this->disabled['css'];
		$this->customScript = $this->disabled['customScript'];
		$this->customCSS = $this->disabled['customCSS'];
	}
	
	/**
	 * Update the given HTML content with the appropriate include tags for the registered
	 * requirements. Needs to receive a valid HTML/XHTML template in the $content parameter,
	 * including a <head> tag. The requirements will insert before the closing <head> tag automatically.
	 *
	 * @todo Calculate $prefix properly
	 * 
	 * @param string $templateFilePath Absolute path for the *.ss template file
	 * @param string $content HTML content that has already been parsed from the $templateFilePath through {@link SSViewer}.
	 * @return string HTML content thats augumented with the requirements before the closing <head> tag.
	 */
	function includeInHTML($templateFile, $content) {
		if(isset($_GET['debug_profile'])) Profiler::mark("Requirements::includeInHTML");
		
		if(strpos($content, '</head') !== false && ($this->javascript || $this->css || $this->customScript || $this->customHeadTags)) {
			$requirements = '';
			$jsRequirements = '';
			
			// Combine files - updates $this->javascript and $this->css 
			$this->process_i18n_javascript(); 
 			$this->process_combined_files(); 
	
			foreach(array_diff_key($this->javascript,$this->blocked) as $file => $dummy) { 
				$path = self::path_for_file($file);
				if($path) {
					$jsRequirements .= "<script type=\"text/javascript\" src=\"$path\"></script>\n";
				}
			}
			
			// add all inline javascript *after* including external files which
			// they might rely on
			if($this->customScript) {
				foreach(array_diff_key($this->customScript,$this->blocked) as $script) { 
					$jsRequirements .= "<script type=\"text/javascript\">\n//<![CDATA[\n";
					$jsRequirements .= "$script\n";
					$jsRequirements .= "\n//]]>\n</script>\n";
				}
			}
			
			foreach(array_diff_key($this->css,$this->blocked) as $file => $params) {  					
				$path = self::path_for_file($file);
				if($path) {
					$media = (isset($params['media']) && !empty($params['media'])) ? " media=\"{$params['media']}\"" : "";
					$requirements .= "<link rel=\"stylesheet\" type=\"text/css\"{$media} href=\"$path\" />\n";
				}
			}
			foreach(array_diff_key($this->customCSS, $this->blocked) as $css) { 
				$requirements .= "<style type=\"text/css\">\n$css\n</style>\n";
			}
			
			foreach(array_diff_key($this->customHeadTags,$this->blocked) as $customHeadTag) { 
				$requirements .= "$customHeadTag\n"; 
			}
	
			if($this->write_js_to_body) {
				// Remove all newlines from code to preserve layout
				$jsRequirements = preg_replace('/>\n*/', '>', $jsRequirements);
				
				// We put script tags into the body, for performance.
				// If your template already has script tags in the body, then we put our script tags at the top of the body.
				// Otherwise, we put it at the bottom.
				$p1 = strripos($content, '<script');
				$p2 = stripos($content, '<body');
				if($p1 !== false && $p1 > $p2) {
					user_error("You have a script tag in the body, moving requirements to top of <body> for compatibilty.  I recommend removing the script tag from your template's body.", E_USER_NOTICE);
					$content = eregi_replace("(<body[^>]*>)", "\\1" . $jsRequirements, $content);
				} else {
					$content = eregi_replace("(</body[^>]*>)", $jsRequirements . "\\1", $content);
				}
				
				// Put CSS at the bottom of the head			
				$content = eregi_replace("(</head[^>]*>)", $requirements . "\\1", $content);
			} else {
				$content = eregi_replace("(</head[^>]*>)", $requirements . "\\1", $content);
				$content = eregi_replace("(</head[^>]*>)", $jsRequirements . "\\1", $content);
			}
		} 
		
		if(isset($_GET['debug_profile'])) Profiler::unmark("Requirements::includeInHTML");
		
		return $content;
	}

	/**
	 * Attach requirements inclusion to X-Include-JS and X-Include-CSS headers on the HTTP response
	 */
	function include_in_response(HTTPResponse $response) {
		$this->process_combined_files(); 
		$jsRequirements = array();
		$cssRequirements = array();

		foreach(array_diff_key($this->javascript, $this->blocked) as $file => $dummy) { 
			$path = $this->path_for_file($file);
			if($path) $jsRequirements[] = $path;
		}

		$response->addHeader('X-Include-JS', implode(',', $jsRequirements));

		foreach(array_diff_key($this->css,$this->blocked) as $file => $params) {  					
			$path = $this->path_for_file($file);
			if($path) $cssRequirements[] = isset($params['media']) ? "$path:##:$params[media]" : $path;
		}

		$response->addHeader('X-Include-CSS', implode(',', $cssRequirements));
	}
	
		/**
	 * Automatically includes the necessary lang-files from the module
	 * according to the locale set in {@link i18n::$current_locale}.
	 * Assumes that a subfolder /javascript exists relative to the included
	 * javascript file, with a file named after the locale - 
	 * so usually <mymodule>/javascript/lang/en_US.js.
	 */
	protected function process_i18n_javascript() {
		// ensure to include the i18n base library
		if(
			count(array_diff_key($this->javascript,$this->blocked)) 
			&& !isset($this->javascript[SAPPHIRE_DIR . '/javascript/i18n.js'])
		) {
			$this->javascript[THIRDPARTY_DIR . '/prototype.js'] = true;
			$this->javascript[SAPPHIRE_DIR . '/javascript/i18n.js'] = true;
		}
		
		// include the specific locale and the master locale for each module
		foreach(array_diff_key($this->javascript,$this->blocked) as $file => $dummy) { 
			if(preg_match('/^http[s]?/', $file)) continue;
			
			$absolutePath = Director::baseFolder() . '/' . $file;
			$absoluteLangPath = dirname($absolutePath) . '/lang/' . i18n::get_locale() . '.js';
			$absoluteDefaultLangPath = dirname($absolutePath) . '/lang/' . i18n::default_locale() . '.js';
			foreach(array($absoluteDefaultLangPath, $absoluteLangPath) as $path) {
				if(Director::fileExists($path)) {
					$langFile = Director::makeRelative($path);
					// Remove rogue leading slashes from Director::makeRelative()
					$langFile = preg_replace('/^\//', '', $langFile);
					$this->javascript[$langFile] = true;
				}	
			}
		}

	}
	
	/**
	 * Finds the path for specified file.
	 *
	 * @param string $fileOrUrl
	 * @return string|boolean 
	 */
	protected static function path_for_file($fileOrUrl) {
		if(preg_match('/^http[s]?/', $fileOrUrl)) {
			return $fileOrUrl;
		} elseif(Director::fileExists($fileOrUrl)) {
			$prefix = Director::absoluteBaseURL();
			$mtimesuffix = "?m=" . filemtime(Director::baseFolder() . '/' . $fileOrUrl);
			return "{$prefix}{$fileOrUrl}{$mtimesuffix}";
		} else {
			return false;
		}
	}
	
	/**
	 * Concatenate several css or javascript files into a single dynamically generated
	 * file (stored in {@link Director::baseFolder()}). This increases performance
	 * by fewer HTTP requests.
	 * 
	 * The combined file is regenerated
	 * based on every file modification time. Optionally a rebuild can be triggered
	 * by appending ?flush=1 to the URL.
	 * If all files to be combined are javascript, we use the external JSMin library
	 * to minify the javascript. This can be controlled by {@link $combine_js_with_jsmin}.
	 * 
	 * All combined files will have a comment on the start of each concatenated file
	 * denoting their original position. For easier debugging, we recommend to only
	 * minify javascript if not in development mode ({@link Director::isDev()}).
	 * 
	 * CAUTION: You're responsible for ensuring that the load order for combined files
	 * is retained - otherwise combining javascript files can lead to functional errors
	 * in the javascript logic, and combining css can lead to wrong styling inheritance.
	 * Depending on the javascript logic, you also have to ensure that files are not included
	 * in more than one combine_files() call.
	 * Best practice is to include every javascript file in exactly *one* combine_files()
	 * directive to avoid the issues mentioned above - this is enforced by this function.
	 * 
	 * CAUTION: Combining CSS Files discards any "media" information.
	 *
	 * Example for combined JavaScript:
	 * <code>
	 * Requirements::combine_files(
	 *  'foobar.js',
	 *  array(
	 * 		'mysite/javascript/foo.js',
	 * 		'mysite/javascript/bar.js',
	 * 	)
	 * );
	 * </code>
	 *
	 * Example for combined CSS:
	 * <code>
	 * Requirements::combine_files(
	 *  'foobar.css',
	 * 	array(
	 * 		'mysite/javascript/foo.css',
	 * 		'mysite/javascript/bar.css',
	 * 	)
	 * );
	 * </code>
	 *
	 * @see http://code.google.com/p/jsmin-php/
	 * 
	 * @todo Should we enforce unique inclusion of files, or leave it to the developer? Can auto-detection cause breaks?
	 * 
	 * @param string $combinedFileName Filename of the combined file (will be stored in {@link Director::baseFolder()} by default)
	 * @param array $files Array of filenames relative to the webroot
	 */
	function combine_files($combinedFileName, $files) { 	
		// duplicate check
		foreach($this->combine_files as $_combinedFileName => $_files) {
			$duplicates = array_intersect($_files, $files);
			if($duplicates) {
				user_error("Requirements::combine_files(): Already included files " . implode(',', $duplicates) . " in combined file '{$_combinedFileName}'", E_USER_NOTICE);
				return false;
			}
		}
		
		$this->combine_files[$combinedFileName] = $files;
	}
	
		/**
	 * Returns all combined files.
	 * @return array
	 */
	function get_combine_files() {
		return $this->combine_files;
	}
	
	/**
	 * Deletes all dynamically generated combined files from the filesystem. 
	 * 
	 * @param string $combinedFileName If left blank, all combined files are deleted.
	 */
	function delete_combined_files($combinedFileName = null) {
		$combinedFiles = ($combinedFileName) ? array($combinedFileName => null) : $this->combine_files;
		foreach($combinedFiles as $combinedFile => $sourceItems) {
			$filePath = Director::baseFolder() . '/' . $combinedFile;
			if(file_exists($filePath)) {
				unlink($filePath);
			}
		}
	}
	
	function clear_combined_files() {
		$this->combine_files = array();
	}
	

	/**
	 * See {@link combine_files()}
	 *
	 */
	function process_combined_files() {
	
		if((Director::isDev() && !SapphireTest::is_running_test()) || !Requirements::get_combined_files_enabled()) {
			return;
		}
		
		// Make a map of files that could be potentially combined
		$combinerCheck = array();
		foreach($this->combine_files as $combinedFile => $sourceItems) {
			foreach($sourceItems as $sourceItem) {
				if(isset($combinerCheck[$sourceItem]) && $combinerCheck[$sourceItem] != $combinedFile){ 
					user_error("Requirements::process_combined_files - file '$sourceItem' appears in two combined files:" .	" '{$combinerCheck[$sourceItem]}' and '$combinedFile'", E_USER_WARNING);
				}
				$combinerCheck[$sourceItem] = $combinedFile;
				
			}
		}
		
		// Figure out which ones apply to this pageview
		$combinedFiles = array();
		$newJSRequirements = array();
		$newCSSRequirements = array();
		foreach($this->javascript as $file => $dummy) {
			if(isset($combinerCheck[$file])) {
				$newJSRequirements[$combinerCheck[$file]] = true;
				$combinedFiles[$combinerCheck[$file]] = true;
			} else {
				$newJSRequirements[$file] = true;
			}
		}
     
		foreach($this->css as $file => $params) {
			if(isset($combinerCheck[$file])) {
				$newCSSRequirements[$combinerCheck[$file]] = true;
				$combinedFiles[$combinerCheck[$file]] = true;
			} else {
				$newCSSRequirements[$file] = $params;
			}
		}

		// Process the combined files
		$base = Director::baseFolder() . '/';
		foreach(array_diff_key($combinedFiles,$this->blocked) as $combinedFile => $dummy) {
			$fileList = $this->combine_files[$combinedFile];

			 // Determine if we need to build the combined include
			if(file_exists($base . $combinedFile) && !isset($_GET['flush'])) {
				// file exists, check modification date of every contained file
				$srcLastMod = 0;
				foreach($fileList as $file) {
					$srcLastMod = max(filemtime($base . $file), $srcLastMod);
				}
				$refresh = $srcLastMod > filemtime($base . $combinedFile);
			} else {
				// file doesn't exist, or refresh was explicitly required
				$refresh = true;
			}

			if(!$refresh) continue;

			$combinedData = "";
			foreach(array_diff($fileList,$this->blocked) as $file) {
				$fileContent = file_get_contents($base . $file);
				// if we have a javascript file and jsmin is enabled, minify the content
				if(stripos($file, '.js') && $this->combine_js_with_jsmin) {
					require_once('thirdparty/jsmin/JSMin.php');
					
					set_time_limit(0);
					$fileContent = JSMin::minify($fileContent);
				}
				// write a header comment for each file for easier identification and debugging
				$combinedData .= "/****** FILE: $file *****/\n" . $fileContent . "\n;\n";
			}
			if(!file_exists(dirname($base . $combinedFile))) {
				Filesystem::makeFolder(dirname($base . $combinedFile));
			}
			
			$successfulWrite = false;
			$fh = fopen($base . $combinedFile, 'w');
			if($fh) {
				if(fwrite($fh, $combinedData) == strlen($combinedData)) $successfulWrite = true;
				fclose($fh);
				unset($fh);
			}

			// Unsuccessful write - just include the regular JS files, rather than the combined one
			if(!$successfulWrite) {
				user_error("Requirements_Backend::process_combined_files(): Couldn't create '$base$combinedFile'", E_USER_WARNING);
				return;
			}
		}

		// @todo Alters the original information, which means you can't call this
		// method repeatedly - it will behave different on the second call!
		$this->javascript = $newJSRequirements;
		$this->css = $newCSSRequirements;
  }
  
  function get_custom_scripts() {
		$requirements = "";
		
		if($this->customScript) {
			foreach($this->customScript as $script) {
				$requirements .= "$script\n";
			}
		}
		
		return $requirements;
	}
	
	/**
	 * Register the given "themeable stylesheet" as required.
	 * Themeable stylesheets have globally unique names, just like templates and PHP files.
	 * Because of this, they can be replaced by similarly named CSS files in the theme directory.
	 * 
	 * @param $name String The identifier of the file.  For example, css/MyFile.css would have the identifier "MyFile"
	 * @param $media String Comma-separated list of media-types (e.g. "screen,projector") 
	 */
	function themedCSS($name, $media = null) {
		global $_CSS_MANIFEST;
		
		$theme = SSViewer::current_theme();
		
		if($theme && isset($_CSS_MANIFEST[$name]) && isset($_CSS_MANIFEST[$name]['themes']) 
			&& isset($_CSS_MANIFEST[$name]['themes'][$theme])) 
			Requirements::css($_CSS_MANIFEST[$name]['themes'][$theme], $media);

		else if(isset($_CSS_MANIFEST[$name]) && isset($_CSS_MANIFEST[$name]['unthemed'])) $this->css($_CSS_MANIFEST[$name]['unthemed'], $media);
		// Normal requirements fails quietly when there is no css - we should do the same
		// else user_error("themedCSS - No CSS file '$name.css' found.", E_USER_WARNING);
	}
	
	function debug() {
		Debug::show($this->javascript);
		Debug::show($this->css);
		Debug::show($this->customCSS);
		Debug::show($this->customScript);
		Debug::show($this->customHeadTags);
		Debug::show($this->combine_files);
	}
	
}

?>
