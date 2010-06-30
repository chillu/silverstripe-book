<?php

class BlogManagementWidget extends Widget {
	static $db = array();
	
	static $title = "Blog Management";
	static $cmsTitle = "Blog Management";
	static $description = "Provide a number of links useful for administering a blog. Only shown if the user is an admin.";
	
	function CommentText() {
		$unmoderatedcount = DB::query("SELECT COUNT(*) FROM PageComment WHERE NeedsModeration=1")->value();
		if($unmoderatedcount == 1) {
			return _t("BlogManagementWidget.UNM1", "You have 1 unmoderated comment");
		} else if($unmoderatedcount > 1) {
			return sprintf(_t("BlogManagementWidget.UNMM", "You have %i unmoderated comments"), $unmoderatedcount);
		} else {
			return _t("BlogManagementWidget.COMADM", "Comment administration");
		}
	}
	
	function CommentLink() {
		$unmoderatedcount = DB::query("SELECT COUNT(*) FROM PageComment WHERE NeedsModeration=1")->value();
		
		if($unmoderatedcount > 0) {
			return "admin/comments/unmoderated";
		} else {
			return "admin/comments";
		}
	}
	
	function WidgetHolder() {
		if(Permission::check("ADMIN")) {
			return $this->renderWith("WidgetHolder");
		}
	}
	
	function PostLink() {
		$blogholder = $this->getBlogHolder();
		
		return $blogholder->Link('post');
	}
	
	function getBlogHolder() {
		$page = Director::currentPage();
		
		if($page->is_a("BlogHolder")) {
			return $page;
		} else if($page->is_a("BlogEntry") && $page->getParent()->is_a("BlogHolder")) {
			return $page->getParent();
		} else {
			return DataObject::get_one("BlogHolder");
		}
	}
}

?>