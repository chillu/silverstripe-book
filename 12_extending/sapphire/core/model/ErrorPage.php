<?php
/**
 * ErrorPage holds the content for the page of an error response.
 * Renders the page on each publish action into a static HTML file
 * within the assets directory, after the naming convention
 * /assets/error-<statuscode>.html.
 * This enables us to show errors even if PHP experiences a recoverable error.
 * ErrorPages
 * 
 * @see Debug::friendlyError()
 * 
 * @package cms
 */
class ErrorPage extends Page {

	static $db = array(
		"ErrorCode" => "Int",
	);

	static $defaults = array(
		"ShowInMenus" => 0,
		"ShowInSearch" => 0
	);
	
	/**
	 * Ensures that there is always a 404 page
	 * by checking if there's an instance of
	 * ErrorPage with a 404 error code. If there
	 * is not, one is created when the DB is built.
	 */
	function requireDefaultRecords() {
		parent::requireDefaultRecords();

		if(!DataObject::get_one('ErrorPage', "ErrorCode = '404'")) {
			$errorpage = new ErrorPage();
			$errorpage->ErrorCode = 404;
			$errorpage->Title = _t('ErrorPage.DEFAULTERRORPAGETITLE', 'Page not found');
			$errorpage->URLSegment = 'page-not-found';
			$errorpage->Content = _t('ErrorPage.DEFAULTERRORPAGECONTENT', '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>');
			$errorpage->Status = 'New page';
			$errorpage->write();
			
			Database::alteration_message('404 page created', 'created');
		}
	}


	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab(
			"Root.Content.Main", 
			new DropdownField(
				"ErrorCode",
				$this->fieldLabel('ErrorCode'),
				array(
					400 => _t('ErrorPage.400', '400 - Bad Request'),
					401 => _t('ErrorPage.401', '401 - Unauthorized'),
					403 => _t('ErrorPage.403', '403 - Forbidden'),
					404 => _t('ErrorPage.404', '404 - Not Found'),
					405 => _t('ErrorPage.405', '405 - Method Not Allowed'),
					406 => _t('ErrorPage.406', '406 - Not Acceptable'),
					407 => _t('ErrorPage.407', '407 - Proxy Authentication Required'),
					408 => _t('ErrorPage.408', '408 - Request Timeout'),
					409 => _t('ErrorPage.409', '409 - Conflict'),
					410 => _t('ErrorPage.410', '410 - Gone'),
					411 => _t('ErrorPage.411', '411 - Length Required'),
					412 => _t('ErrorPage.412', '412 - Precondition Failed'),
					413 => _t('ErrorPage.413', '413 - Request Entity Too Large'),
					414 => _t('ErrorPage.414', '414 - Request-URI Too Long'),
					415 => _t('ErrorPage.415', '415 - Unsupported Media Type'),
					416 => _t('ErrorPage.416', '416 - Request Range Not Satisfiable'),
					417 => _t('ErrorPage.417', '417 - Expectation Failed'),
					500 => _t('ErrorPage.500', '500 - Internal Server Error'),
					501 => _t('ErrorPage.501', '501 - Not Implemented'),
					502 => _t('ErrorPage.502', '502 - Bad Gateway'),
					503 => _t('ErrorPage.503', '503 - Service Unavailable'),
					504 => _t('ErrorPage.504', '504 - Gateway Timeout'),
					505 => _t('ErrorPage.505', '505 - HTTP Version Not Supported'),
				)
			),
			"Content"
		);
		
		return $fields;
	}
	
	/**
	 * When an error page is published, create a static HTML page with its
	 * content, so the page can be shown even when SilverStripe is not
	 * functioning correctly before publishing this page normally.
	 * @param string|int $fromStage Place to copy from. Can be either a stage name or a version number.
	 * @param string $toStage Place to copy to. Must be a stage name.
	 * @param boolean $createNewVersion Set this to true to create a new version number.  By default, the existing version number will be copied over.
	 */
	function publish($fromStage, $toStage, $createNewVersion = false) {
		$oldStage = Versioned::current_stage();

		// Run the page
		$response = Director::test(Director::makeRelative($this->Link()));
		$errorContent = $response->getBody();
		
		// Check we have an assets base directory, creating if it we don't
		if(!file_exists(ASSETS_PATH)) {
			mkdir(ASSETS_PATH, 02775);
		}

		// Path to the error file in the file store
		$errorFile = ASSETS_PATH . "/error-$this->ErrorCode.html";

		// Attempt to open the file, writing it if it doesn't exist
		$fh = @fopen($errorFile, "w");
		if($fh) {
			fwrite($fh, $errorContent);
			fclose($fh);
		} else {
			$fileErrorText = sprintf(
				_t(
					"ErrorPage.ERRORFILEPROBLEM",
					"Error opening file \"%s\" for writing. Please check file permissions."
				),
				$errorFile
			);
			FormResponse::status_message($fileErrorText, 'bad');
			FormResponse::respond();
			return;
		}
		
		// Restore the version we're currently connected to.
		Versioned::reading_stage($oldStage);
		
		return $this->extension_instances['Versioned']->publish($fromStage, $toStage, $createNewVersion);
	}
	
	function fieldLabels() {
		$labels = parent::fieldLabels();
		$labels['ErrorCode'] = _t('ErrorPage.CODE', "Error code");
		
		return $labels;
	}
}

/**
 * Controller for ErrorPages.
 * @package cms
 */
class ErrorPage_Controller extends Page_Controller {
	public function init() {
		parent::init();
		
		Director::set_status_code($this->failover->ErrorCode ? $this->failover->ErrorCode : 404);
	}
}


?>