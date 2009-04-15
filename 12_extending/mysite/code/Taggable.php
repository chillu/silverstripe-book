<?php
class Taggable extends DataObjectDecorator {
	
	public static $separator = ' ';
	
	function extraStatics() {
		return array(
			'db' => array(
				'TagsText' => 'Text'
			)
		);
	}
	
	function updateCMSFields(&$fields) {
		$fields->addFieldToTab('Root.Content.Main',
			new TextField('TagsText')
		);
	}
	
	function getTagsCollection() {
		$set = new DataObjectSet();
		$tags = split(self::$separator, $this->owner->Tags);
		if($tags) foreach($tags as $tag) {
			$set->push(new ArrayData(array(
				'Title' => $tag
			)));
		}
		return $set;
	}
	
}
?>