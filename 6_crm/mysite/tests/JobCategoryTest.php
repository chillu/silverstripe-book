<?php
class JobCategoryTest extends FunctionalTest {
	
	static $fixture_file = 'mysite/tests/JobCategoryTest.yml';
	
	function setUp() {
		parent::setUp();
		
		$this->useDraftSite();
	}
	
	function testAddJobForm() {
		$testMember = $this->objFromFixture(
			'Member',
			'testmember'
		);
		
		$response = $this->get('developers-test-url');
		$this->assertNotContains(
			'<form id="Form_Form"', 
			$response->getBody(),
			'Form does not show without valid login'
		);
		
		$this->session()->inst_set(
			'loggedInAs', 
			$testMember->ID
		);
		$response = $this->get('developers-test-url');
		$this->assertContains(
			'<form id="Form_Form"', 
			$response->getBody(),
			'Form show for logged-in members'
		);
		
		$jobData = array(
			'Title' => 'Test Title',
			'Description' => 'Test Description', 
		);
		$this->submitForm('Form_Form', null, $jobData);
		$response = $this->get('developers-test-url');
		$this->assertPartialMatchBySelector(
			'li.job h3 a',
			'Test Title',
			'Submitted job title displays in overview'
		);
	}
	
}
?>