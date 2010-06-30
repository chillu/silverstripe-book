<?php

/**
 * Sapphire-specific testing object designed to support functional testing of your web app.  It simulates get/post
 * requests, form submission, and can validate resulting HTML, looking up content by CSS selector.
 * 
 * The example below shows how it works.
 * 
 * <code>
 *   function testMyForm() {
 *     // Visit a URL
 *     $this->get("your/url");
 * 
 *     // Submit a form on the page that you get in response
 *     $this->submitForm("MyForm_ID",  array("Email" => "invalid email ^&*&^"));
 *
 *     // Validate the content that is returned
 *     $this->assertExactMatchBySelector("#MyForm_ID p.error", array("That email address is invalid."));
 *  }	
 * </code>
 * 
 * @package sapphire
 * @subpackage testing
 */
class FunctionalTest extends SapphireTest {
	/**
	 * Set this to true on your sub-class to disable the use of themes in this test.
	 * This can be handy for functional testing of modules without having to worry about whether a user has changed
	 * behaviour by replacing the theme.
	 */
	static $disable_themes = false;
	
	/**
	 * Set this to true on your sub-class to use the draft site by default for every test in this class.
	 */
	static $use_draft_site = false;
	
	protected $mainSession = null;
	
	/**
	 * CSSContentParser for the most recently requested page.
	 */
	protected $cssParser = null;
	
	private $originalTheme = null;
	
	/**
	 * If this is true, then 30x Location headers will be automatically followed.
	 * If not, then you will have to manaully call $this->mainSession->followRedirection() to follow them.  However, this will let you inspect
	 * the intermediary headers
	 */
	protected $autoFollowRedirection = true;
	
	/**
	 * Returns the {@link Session} object for this test
	 */
	function session() {
		return $this->mainSession->session();
	}

	function setUp() {
		parent::setUp();
		$this->mainSession = new TestSession();

		// Disable theme, if necessary
		if($this->stat('disable_themes')) {
			$this->originalTheme = SSViewer::current_theme();
			SSViewer::set_theme(null);
		}
		
		// Switch to draft site, if necessary
		if($this->stat('use_draft_site')) {
			$this->useDraftSite();
		}
	}

	function tearDown() {
		parent::tearDown();
		unset($this->mainSession);

		// Re-enable theme, if previously disabled
		if($this->stat('disable_themes')) {
			SSViewer::set_theme($this->originalTheme);
		}
	}

	/**
	 * Submit a get request
	 */
	function get($url) {
		$this->cssParser = null;
		$response = $this->mainSession->get($url);
		if($this->autoFollowRedirection && is_object($response) && $response->getHeader('Location')) $response = $this->mainSession->followRedirection();
		return $response;
	}

	/**
	 * Submit a post request
	 */
	function post($url, $data) {
		$this->cssParser = null;
		$response = $this->mainSession->post($url, $data);
		if($this->autoFollowRedirection && is_object($response) && $response->getHeader('Location')) $response = $this->mainSession->followRedirection();
		return $response;
	}
	
	/**
	 * Submit the form with the given HTML ID, filling it out with the given data.
	 * Acts on the most recent response
	 */
	function submitForm($formID, $button = null, $data = array()) {
		$this->cssParser = null;
		$response = $this->mainSession->submitForm($formID, $button, $data);
		if($this->autoFollowRedirection && is_object($response) && $response->getHeader('Location')) $response = $this->mainSession->followRedirection();
		return $response;
	}
	
	/**
	 * Return the most recent content
	 */
	function content() {
		return $this->mainSession->lastContent();
	}
	
	/**
	 * Return a CSSContentParser for the most recent content.
	 */
	function cssParser() {
		if(!$this->cssParser) $this->cssParser = new CSSContentParser($this->mainSession->lastContent());
		return $this->cssParser;
	}
	
	/**
	 * Assert that the most recently queried page contains a number of content tags specified by a CSS selector.
	 * The given CSS selector will be applied to the HTML of the most recent page.  The content of every matching tag
	 * will be examined. The assertion fails if one of the expectedMatches fails to appear.
	 *
	 * Note: &nbsp; characters are stripped from the content; make sure that your assertions take this into account.
	 * 
	 * @param string $selector A basic CSS selector, e.g. 'li.jobs h3'
	 * @param array|string $expectedMatches The content of at least one of the matched tags
	 * @throws PHPUnit_Framework_AssertionFailedError
	 * @return boolean
	 */
	function assertPartialMatchBySelector($selector, $expectedMatches) {
		if(is_string($expectedMatches)) $expectedMatches = array($expectedMatches);
		
		$items = $this->cssParser()->getBySelector($selector);

		$actuals = array();
		if($items) foreach($items as $item) $actuals[trim(preg_replace("/[ \n\r\t]+/", " ", $item. ''))] = true;
		
		foreach($expectedMatches as $match) {
			if(!isset($actuals[$match])) {
				throw new PHPUnit_Framework_AssertionFailedError(
		            "Failed asserting the CSS selector '$selector' has an exact match to the expected elements:\n'" . implode("'\n'", $expectedMatches) . "'\n\n" 
					. "Instead the following elements were found:\n'" . implode("'\n'", array_keys($actuals)) . "'"
		        );
				return false;
			}
		}
		
		return true;
	}

	/**
	 * Assert that the most recently queried page contains a number of content tags specified by a CSS selector.
	 * The given CSS selector will be applied to the HTML of the most recent page.  The full HTML of every matching tag
	 * will be examined. The assertion fails if one of the expectedMatches fails to appear.
	 *
	 * Note: &nbsp; characters are stripped from the content; make sure that your assertions take this into account.
	 * 
	 * @param string $selector A basic CSS selector, e.g. 'li.jobs h3'
	 * @param array|string $expectedMatches The content of *all* matching tags as an array
	 * @throws PHPUnit_Framework_AssertionFailedError
	 * @return boolean
	 */
	function assertExactMatchBySelector($selector, $expectedMatches) {
		if(is_string($expectedMatches)) $expectedMatches = array($expectedMatches);
		
		$items = $this->cssParser()->getBySelector($selector);

		$actuals = array();
		if($items) foreach($items as $item) $actuals[] = trim(preg_replace("/[ \n\r\t]+/", " ", $item. ''));
		
		if($expectedMatches != $actuals) {
			throw new PHPUnit_Framework_AssertionFailedError(
	            "Failed asserting the CSS selector '$selector' has an exact match to the expected elements:\n'" . implode("'\n'", $expectedMatches) . "'\n\n" 
				. "Instead the following elements were found:\n'" . implode("'\n'", $actuals) . "'"
	        );
			return false;
		}
		
		return true;
	}

	/**
	 * Assert that the most recently queried page contains a number of content tags specified by a CSS selector.
	 * The given CSS selector will be applied to the HTML of the most recent page.  The content of every matching tag
	 * will be examined. The assertion fails if one of the expectedMatches fails to appear.
	 *
	 * Note: &nbsp; characters are stripped from the content; make sure that your assertions take this into account.
	 *
	 * @param string $selector A basic CSS selector, e.g. 'li.jobs h3'
	 * @param array|string $expectedMatches The content of at least one of the matched tags
	 * @throws PHPUnit_Framework_AssertionFailedError
	 * @return boolean
	 */
	function assertPartialHTMLMatchBySelector($selector, $expectedMatches) {
		if(is_string($expectedMatches)) $expectedMatches = array($expectedMatches);
		
		$items = $this->cssParser()->getBySelector($selector);

		$actuals = array();
		if($items) foreach($items as $item) $actuals[$item->asXML()] = true;
		
		foreach($expectedMatches as $match) {
			if(!isset($actuals[$match])) {
				throw new PHPUnit_Framework_AssertionFailedError(
		            "Failed asserting the CSS selector '$selector' has an exact match to the expected elements:\n'" . implode("'\n'", $expectedMatches) . "'\n\n" 
					. "Instead the following elements were found:\n'" . implode("'\n'", array_keys($actuals)) . "'"
		        );
				return false;
			}
		}
		
		return true;
	}

	/**
	 * Assert that the most recently queried page contains a number of content tags specified by a CSS selector.
	 * The given CSS selector will be applied to the HTML of the most recent page.  The full HTML of every matching tag
	 * will be examined. The assertion fails if one of the expectedMatches fails to appear.
	 *
	 * Note: &nbsp; characters are stripped from the content; make sure that your assertions take this into account.
	 * 
	 * @param string $selector A basic CSS selector, e.g. 'li.jobs h3'
	 * @param array|string $expectedMatches The content of *all* matched tags as an array
	 * @throws PHPUnit_Framework_AssertionFailedError
	 * @return boolean
	 */
	function assertExactHTMLMatchBySelector($selector, $expectedMatches) {
		$items = $this->cssParser()->getBySelector($selector);

		$actuals = array();
		if($items) foreach($items as $item) $actuals[] = $item->asXML();
		
		if($expectedMatches != $actuals) {
			throw new PHPUnit_Framework_AssertionFailedError(
	            "Failed asserting the CSS selector '$selector' has an exact match to the expected elements:\n'" . implode("'\n'", $expectedMatches) . "'\n\n" 
				. "Instead the following elements were found:\n'" . implode("'\n'", $actuals) . "'"
	        );
		}
	}	
	
	/**
	 * Use the draft (stage) site for testing.
	 * This is helpful if you're not testing publication functionality and don't want "stage management" cluttering your test.
	 */
	function useDraftSite() {
		$this->session()->inst_set('currentStage', 'Stage');
		$this->session()->inst_set('unsecuredDraftSite', true);
	}

	/**
	 * Return a static variable from this class.
	 * Gets around PHP's lack of late static binding.
	 */
	function stat($varName) {
		$className = get_class($this);
		return eval("return {$className}::\$$varName;");
	}
}