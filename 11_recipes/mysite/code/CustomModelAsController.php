<?php
class CustomModelAsController extends ModelAsController {
	public function getNestedController() {
		if($this->urlParams['URLSegment']) {
			$SQL_URLSegment = Convert::raw2sql(
				$this->urlParams['URLSegment']
			);
			$page = DataObject::get_one(
				'Page',
				"`SiteTree`.LegacyURL = '{$SQL_URLSegment}'"
			);
			if($page) {
				$response = new HTTPResponse();
				$response->redirect($page->URLSegment, 301);
				return $response;
			}
		}
		
		return parent::getNestedController();
	}
}
?>