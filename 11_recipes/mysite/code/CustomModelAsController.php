<?php
class CustomModelAsController extends ModelAsController {
	public function handleRequest($request) {
			$this->request = $request;
			return parent::handleRequest($request);
		}
		public function getNestedController() {
			$url = $this->request->getUrl();
			$getVars = $this->request->getVars();
			if(isset($getVars['url'])) unset($getVars['url']);
			if($getVars) $url .= '?' . http_build_query($getVars);
			if($url) {
				$SQL_URLSegment = Convert::raw2sql($url);
				$page = DataObject::get_one(
					'Page',
					"`SiteTree`.LegacyURL = '{$SQL_URLSegment}'"
				);
				if($page) {
					$response = new HTTPResponse();
					$newUrl = Director::baseURL() . $page->URLSegment;
					$response->redirect($newUrl, 301);
					return $response;
				}
			}
			return parent::getNestedController();
		}
}
?>