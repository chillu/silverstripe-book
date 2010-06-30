<?php
/**
 * @package sapphire
 * @subpackage tests
 * 
 * @todo test Director::alternateBaseFolder()
 */
class DirectorTest extends SapphireTest {
	
	public function testFileExists() {
		$tempFileName = 'DirectorTest_testFileExists.tmp';
		$tempFilePath = TEMP_FOLDER . '/' . $tempFileName;
		
		// create temp file
		file_put_contents($tempFilePath, '');
		
		$this->assertTrue(
			Director::fileExists($tempFilePath), 
			'File exist check with absolute path'
		);
		
		$this->assertTrue(
			Director::fileExists($tempFilePath . '?queryparams=1&foo[bar]=bar'), 
			'File exist check with query params ignored'
		);
		
		unlink($tempFilePath);
	}

	public function testAlternativeBaseURL() {
		// relative base URLs - you should end them in a /
		Director::setBaseURL('/relativebase/');
		$this->assertEquals('/relativebase/', Director::baseURL());
		$this->assertEquals(Director::protocolAndHost() . '/relativebase/', Director::absoluteBaseURL());
		$this->assertEquals(Director::protocolAndHost() . '/relativebase/subfolder/test', Director::absoluteURL('subfolder/test'));

		// absolute base URLs - you should end them in a /
		Director::setBaseURL('http://www.example.org/');
		$this->assertEquals('http://www.example.org/', Director::baseURL());
		$this->assertEquals('http://www.example.org/', Director::absoluteBaseURL());
		$this->assertEquals('http://www.example.org/subfolder/test', Director::absoluteURL('subfolder/test'));

		// Setting it to false restores functionality
		Director::setBaseURL(false);
		$this->assertEquals(BASE_URL.'/', Director::baseURL());
		$this->assertEquals(Director::protocolAndHost().BASE_URL.'/', Director::absoluteBaseURL(BASE_URL));
		$this->assertEquals(Director::protocolAndHost().BASE_URL . '/subfolder/test', Director::absoluteURL('subfolder/test'));
	}
	
	/**
	 * Tests that {@link Director::is_absolute()} works under different environment types
	 */
	public function testIsAbsolute() {
		$expected = array (
			'C:/something' => true,
			'd:\\'         => true,
			'e/'           => false,
			's:/directory' => true,
			'/var/www'     => true,
			'\\Something'  => true,
			'something/c:' => false,
			'folder'       => false,
			'a/c:/'        => false
		);
		
		foreach($expected as $path => $result) {
			$this->assertEquals(Director::is_absolute($path), $result, "Test result for $path");
		}
	}
	
	public function testIsAbsoluteUrl() {
		$this->assertTrue(Director::is_absolute_url('http://test.com'));
		$this->assertTrue(Director::is_absolute_url('https://test.com'));
		$this->assertTrue(Director::is_absolute_url('   https://test.com/testpage   '));
		$this->assertFalse(Director::is_absolute_url('test.com/testpage'));
		$this->assertTrue(Director::is_absolute_url('ftp://test.com'));
		$this->assertFalse(Director::is_absolute_url('/relative'));
		$this->assertFalse(Director::is_absolute_url('relative'));
		$this->assertFalse(Director::is_absolute_url('/relative/?url=http://test.com'));
	}
	
}
?>