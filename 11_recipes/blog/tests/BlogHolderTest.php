<?php

class BlogHolderTest extends SapphireTest {
	static $fixture_file = 'blog/tests/BlogTest.yml';

	function testGetAllBlogEntries() {
		$mainblog = $this->fixture->objFromFixture('BlogHolder', 'mainblog');
		
		$this->assertEquals($mainblog->Entries()->Count(), 3);
	}
	
	function testEntriesByMonth() {
		$mainblog = $this->fixture->objFromFixture('BlogHolder', 'mainblog');
		
		$entries = $mainblog->Entries('', '', '2008-01');
		$this->assertEquals($entries->Count(), 2);
		$expectedEntries = array(
			'test-post-2',
			'test-post-3'
		);
		
		foreach($entries as $entry) {
			$this->assertContains($entry->URLSegment, $expectedEntries);
		}
	}
	
	function textEntriesByYear() {
		$mainblog = $this->fixture->objFromFixture('BlogHolder', 'mainblog');
		
		$entries = $mainblog->Entries('', '', '2007');
		$this->assertEquals($entries->Count(), 1);
		$expectedEntries = array(
			'test-post'
		);
		
		foreach($entries as $entry) {
			$this->assertContains($entry->URLSegment, $expectedEntries);
		}
	}
	
	function testEntriesByTag() {
		$mainblog = $this->fixture->objFromFixture('BlogHolder', 'mainblog');
		
		$entries = $mainblog->Entries('', 'tag1');
		$this->assertEquals($entries->Count(), 2);
		$expectedEntries = array(
			'test-post',
			'test-post-3'
		);
		
		foreach($entries as $entry) {
			$this->assertContains($entry->URLSegment, $expectedEntries);
		}
	}
}

?>
