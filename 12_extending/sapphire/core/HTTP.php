<?php
/**
 * A class with HTTP-related helpers.
 * Like Debug, this is more a bundle of methods than a class ;-)
 * 
 * @package sapphire
 * @subpackage misc
 */
class HTTP {

	static $userName;
	static $password;

	/**
	 * Turns a local system filename into a URL by comparing it to the script filename
	 */
	static function filename2url($filename) {
		$slashPos = -1;
		while(($slashPos = strpos($filename, "/", $slashPos+1)) !== false) {
			if(substr($filename, 0, $slashPos) == substr($_SERVER['SCRIPT_FILENAME'],0,$slashPos)) {
				$commonLength = $slashPos;
			} else {
				break;
			}
		}

		$urlBase = substr($_SERVER['PHP_SELF'], 0, -(strlen($_SERVER['SCRIPT_FILENAME']) - $commonLength));
		$url = $urlBase . substr($filename, $commonLength);
		$protocol = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') ? "https" : "http";
		return "$protocol://". $_SERVER['HTTP_HOST'] . $url;

		// Count the number of extra folders the script is in.
		// $prefix = str_repeat("../", substr_count(substr($_SERVER[SCRIPT_FILENAME],$commonBaseLength)));
	}

	/**
	 * Turn all relative URLs in the content to absolute URLs
	 */
	static function absoluteURLs($html) {
		$html = str_replace('$CurrentPageURL', $_SERVER['REQUEST_URI'], $html);
		return HTTP::urlRewriter($html, '(substr($URL,0,1) == "/") ? ( Director::protocolAndHost() . $URL ) : ( (ereg("^[A-Za-z]+:", $URL)) ? $URL : Director::absoluteBaseURL() . $URL )' );
	}

	/*
	 * Rewrite all the URLs in the given content, evaluating the given string as PHP code
	 *
	 * Put $URL where you want the URL to appear, however, you can't embed $URL in strings
	 * Some example code:
	 *  '"../../" . $URL'
	 *  'myRewriter($URL)'
	 *  '(substr($URL,0,1)=="/") ? "../" . substr($URL,1) : $URL'
	 */
	static function urlRewriter($content, $code) {
		$attribs = array("src","background","a" => "href","link" => "href", "base" => "href");
		foreach($attribs as $tag => $attrib) {
			if(!is_numeric($tag)) $tagPrefix = "$tag ";
			else $tagPrefix = "";

			$regExps[] = "/(<{$tagPrefix}[^>]*$attrib *= *\")([^\"]*)(\")/ie";
			$regExps[] = "/(<{$tagPrefix}[^>]*$attrib *= *')([^']*)(')/ie";
			$regExps[] = "/(<{$tagPrefix}[^>]*$attrib *= *)([^\"' ]*)( )/ie";
		}
		$regExps[] = '/(background-image:[^;]*url *\()([^)]+)(\))/ie';
		$regExps[] = '/(background:[^;]*url *\()([^)]+)(\))/ie';

		// Make
		$code = 'stripslashes("$1") . (' . str_replace('$URL', 'stripslashes("$2")', $code) . ') . stripslashes("$3")';

		foreach($regExps as $regExp) {
			$content = preg_replace($regExp, $code, $content);
		}

		return $content;
	}

	public static function setGetVar($varname, $varvalue, $currentURL = null) {
		$scriptbase = $currentURL ? $currentURL : $_SERVER['REQUEST_URI'];
		
		$scriptbase = str_replace('&amp;', '&', $scriptbase);
		$scriptbase = preg_replace('/\?' . quotemeta($varname) . '=([^&]*)&/', '?', $scriptbase);
		$scriptbase = preg_replace('/([\?&]+)' . quotemeta($varname) . '=([^&]*)/', null, $scriptbase);
		
		$suffix = '';
		if(($hashPos = strpos($scriptbase,'#')) !== false) {
			$suffix .= substr($scriptbase, $hashPos);
			$scriptbase = substr($scriptbase, 0, $hashPos);
		}

		if($varvalue !== null) {
			$scriptbase .= (strrpos($scriptbase,'?') !== false) ? '&' : '?';
			$scriptbase .= "$varname=" . (isset($urlEncodeVarValue) ? urlencode($varvalue) : $varvalue);
		}

		$scriptbase = str_replace('&','&amp;',$scriptbase);
		return $scriptbase . $suffix;
	}

	static function RAW_setGetVar($varname, $varvalue, $currentURL = null) {
		$url = self::setGetVar($varname, $varvalue, $currentURL);
		return Convert::xml2raw($url);
	}

	static function findByTagAndAttribute($content, $attribs) {
		$regExps = array();
		
		foreach($attribs as $tag => $attrib) {
			$tagPrefix = (is_numeric($tag)) ? '' : "$tag ";
			
			$regExps[] = "/(<{$tagPrefix}[^>]*$attrib *= *\")([^\"]*)(\")/ie";
			$regExps[] = "/(<{$tagPrefix}[^>]*$attrib *= *')([^']*)(')/ie";
			$regExps[] = "/(<{$tagPrefix}[^>]*$attrib *= *)([^\"' ]*)( )/ie";
		}

		if($regExps) {
			foreach($regExps as $regExp) {
				$content = preg_replace($regExp, '$items[] = "$2"', $content);
			}
		}

		return isset($items) ? $items : null;
	}

	static function getLinksIn($content) {
		return self::findByTagAndAttribute($content, array("a" => "href"));
	}
	
	static function getImagesIn($content) {
		return self::findByTagAndAttribute($content, array("img" => "src"));
	}

	/**
	 * Outputs appropriate header for downloading a file
	 * exits() after the call, so that no further output is given.
	 * 
	 * @deprecated 2.3 Return a HTTPRequest::send_file() object instead
	 */
	static function sendFileToBrowser($fileData, $fileName, $mimeType = false) {
		user_error("HTTP::sendFileToBrowser() deprecated; return a HTTPRequest::send_file() object instead", E_USER_NOTICE);
		HTTPRequest::send_file($fileData, $fileName, $mimeType)->output();
		exit(0);
	}

	/*
	 * Get mime type based on extension
	 */
	static function getMimeType($filename) {
		global $global_mimetypes;
		if(!$global_mimetypes) self::loadMimeTypes();
		$ext = strtolower(substr($filename,strrpos($filename,'.')+1));
		if(isset($global_mimetypes[$ext])) return $global_mimetypes[$ext];
	}

	/*
	 * Load the mime-type data from the system file
	 */
	static function loadMimeTypes() {
		if(@file_exists('/etc/mime.types')) {
			$mimeTypes = file('/etc/mime.types');
			foreach($mimeTypes as $typeSpec) {
				if(($typeSpec = trim($typeSpec)) && substr($typeSpec,0,1) != "#") {
					$parts = split("[ \t\r\n]+", $typeSpec);
					if(sizeof($parts) > 1) {
						$mimeType = array_shift($parts);
						foreach($parts as $ext) {
							$ext = strtolower($ext);
							$mimeData[$ext] = $mimeType;
						}
					}
				}
			}

		// Fail-over for if people don't have /etc/mime.types on their server.  it's unclear how important this actually is
		} else {
			$mimeData = array(
				"doc" => "application/msword",
				"xls" => "application/vnd.ms-excel",
				"rtf" => "application/rtf",
			);
		}

		global $global_mimetypes;
		$global_mimetypes = $mimeData;
		return $mimeData;
	}

	/**
	 * Send an HTTP request to the host.
	 *
	 * @return String Response text
	 */
	static function sendRequest( $host, $path, $query, $port = 80 ) {
		$socket = fsockopen( $host, $port, $errno, $error );

		if( !$socket )
			return $error;

		if( $query )
			$query = '?' . $query;

		if( self::$userName && self::$password ) {
			$auth = "Authorization: Basic " . base64_encode( self::$userName . ':' . self::$password ) . "\r\n";
		} else {
			$auth = '';
		}

		$request = "GET {$path}{$query} HTTP/1.1\r\nHost: $host\r\nConnection: Close\r\n{$auth}\r\n";

		fwrite( $socket, $request );
		$response = stream_get_contents( $socket );

		return $response;
	}

	/**
	 * Send a HTTP POST request through fsockopen().
	 *
	 * @param string $host Absolute URI without path, e.g. http://silverstripe.com
	 * @param string $path Path with leading slash
	 * @param array|string $data Payload for the request
	 * @param string $name Parametername for the payload (only if passed as a string)
	 * @param string $query
	 * @param string $port
	 * @return string Raw HTTP-result including headers
	 */
	static function sendPostRequest($host, $path, $data, $name = null, $query = '', $port = 80, $getResponse = true) {
		$socket = fsockopen($host, $port, $errno, $error);

		if(!$socket)
			return $error;

		if(self::$userName && self::$password)
			$auth = "Authorization: Basic " . base64_encode(self::$userName . ':' . self::$password) . "\r\n";
		else
			$auth = '';

		if($query)
			$query = '?' . $query;

		$dataStr = (is_array($data)) ? http_build_query($data) : $name . '=' . urlencode($data);
		$request = "POST {$path}{$query} HTTP/1.1\r\nHost: $host\r\n{$auth}Content-Type: application/x-www-form-urlencoded\r\nContent-Length: " . strlen($dataStr) . "\r\n\r\n";
		$request .= $dataStr . "\r\n\r\n";

		fwrite($socket, $request);
		
		if($getResponse){
			$response = stream_get_contents($socket);
			return $response;
		}

	}

	protected static $cache_age = 0, $modification_date = null;
	protected static $etag = null;

	/**
	 * Set the maximum age of this page in web caches, in seconds
	 */
	static function set_cache_age($age) {
		self::$cache_age = $age;
	}

	static function register_modification_date($dateString) {
		$timestamp = strtotime($dateString);
		if($timestamp > self::$modification_date)
			self::$modification_date = $timestamp;
	}

	static function register_modification_timestamp($timestamp) {
		if($timestamp > self::$modification_date)
			self::$modification_date = $timestamp;
	}

	static function register_etag($etag) {
		self::$etag = $etag;
	}

	/**
	 * Add the appropriate caching headers to the response, including If-Modified-Since / 304 handling.
	 *
	 * @param HTTPResponse The HTTPResponse object to augment.  Omitted the argument or passing a string is deprecated; in these
	 * cases, the headers are output directly.
	 */
	static function add_cache_headers($body = null) {
		// Validate argument
		if($body && !($body instanceof HTTPResponse)) {
			user_error("HTTP::add_cache_headers() must be passed an HTTPResponse object", E_USER_WARNING);
			$body = null;
		}
		
		// Development sites have frequently changing templates; this can get stuffed up by the code
		// below.
		if(Director::isDev()) return;
		
		// The headers have been sent and we don't have an HTTPResponse object to attach things to; no point in us trying.
		if(headers_sent() && !$body) return;
		
		// Popuplate $responseHeaders with all the headers that we want to build 
		$responseHeaders = array();
		if(function_exists('apache_request_headers')) {
			$requestHeaders = apache_request_headers();
			if(isset($requestHeaders['X-Requested-With']) && $requestHeaders['X-Requested-With'] == 'XMLHttpRequest') self::$cache_age = 0;
			// bdc: now we must check for DUMB IE6:
			if(isset($requestHeaders['x-requested-with']) && $requestHeaders['x-requested-with'] == 'XMLHttpRequest') self::$cache_age = 0;
		}

		if(self::$cache_age > 0) {
			$responseHeaders["Cache-Control"] = "max-age=" . self::$cache_age . ", must-revalidate";
			$responseHeaders["Pragma"] = "";
		} else {
			$responseHeaders["Cache-Control"] = "no-cache, max-age=0, must-revalidate";
		}

		if(self::$modification_date && self::$cache_age > 0) {
			$responseHeaders["Last-Modified"] =self::gmt_date(self::$modification_date);

			// 304 response detection
			if(isset($_SERVER['HTTP_IF_MODIFIED_SINCE'])) {
				$ifModifiedSince = strtotime(stripslashes($_SERVER['HTTP_IF_MODIFIED_SINCE']));
				if($ifModifiedSince >= self::$modification_date) {
					if($body) {
						$body->setStatusCode(304);
						$body->setBody('');
					} else {
						header('HTTP/1.0 304 Not Modified');
						die();
					}
				}
			}

			$expires = time() + self::$cache_age;
			$responseHeaders["Expires"] = self::gmt_date($expires);
		}

		if(self::$etag) {
			$responseHeaders['ETag'] = self::$etag;
		}
		
		// Now that we've generated them, either output them or attach them to the HTTPResponse as appropriate
		foreach($responseHeaders as $k => $v) {
			if($body) $body->addHeader($k, $v);
			else header("$k: $v");
		}
	}


	/**
	 * Return an {@link http://www.faqs.org/rfcs/rfc2822 RFC 2822} date in the
	 * GMT timezone (a timestamp is always in GMT: the number of seconds
	 * since January 1 1970 00:00:00 GMT)
	 */
	static function gmt_date($timestamp) {
		return gmdate('D, d M Y H:i:s', $timestamp) . ' GMT';
	}

}

?>