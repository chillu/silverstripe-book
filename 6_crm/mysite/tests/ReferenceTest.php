<?php
class ReferenceTest extends SapphireTest {

	static $fixture_file = 'mysite/tests/ReferenceTest.yml';
	
	function testAddDeveloperIdOnFirstWrite() {
		$reference = new Reference();
		$reference->write();
		$this->assertEquals(
			$reference->DeveloperID,
			Member::currentUserID(),
			'Developer ID is automatically set on first write'
		);
	}
}
?>