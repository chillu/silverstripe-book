<?php
/**
 * @package blog
 * @subpackage tests
 */
class BlogHolderFunctionalTest extends FunctionalTest {
	
	static $fixture_file = 'blog/tests/BlogHolderFunctionalTest.yml';
	
	function setUp() {
		parent::setUp();
		
		$blogHolder = $this->objFromFixture('BlogHolder', 'blogholder');
		$blogHolder->publish('Stage', 'Live');
		$blogEntry = $this->objFromFixture('BlogEntry', 'entry1');
		$blogEntry->publish('Stage', 'Live');
	}
	
	function testFrontendBlogPostRequiresPermission() {
		// get valid SecurityID (from comments form, would usually be copy/pasted)
		$blogEntry = $this->objFromFixture('BlogEntry', 'entry1');
		$response = $this->get($blogEntry->URLSegment);
		$securityID = Session::get('SecurityID');
		
		// without login
		$data = array(
			'Title'=>'Disallowed',
			'Author'=>'Disallowed',
			'Content'=>'Disallowed',
			'action_postblog' => 'Post blog entry',
			'SecurityID' => $securityID
		);
		$response = $this->post('blog/BlogEntryForm', $data);
		$this->assertFalse(DataObject::get_one('BlogEntry', sprintf("Title = 'Disallowed'")));
		
		// with login
		$blogEditor = $this->objFromFixture('Member', 'blog_editor');
		$blogEditor->logIn();
		$data = array(
			'Title'=>'Allowed',
			'Author'=>'Allowed',
			'Content'=>'Allowed',
			'action_postblog' => 'Post blog entry',
			'SecurityID' => $securityID
		);
		$response = $this->post('blog/BlogEntryForm', $data);
		$this->assertType('BlogEntry', DataObject::get_one('BlogEntry', sprintf("Title = 'Allowed'")));
	}
}