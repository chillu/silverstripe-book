<?php
/**
 * An individual blog entry page type.
 * 
 * @package blog
 */
class BlogEntry extends Page {
	
	static $default_parent = 'BlogHolder';
	
	static $can_be_root = false;
	
	static $icon = "blog/images/blogpage";
	
	static $db = array(
		"Date" => "SSDatetime",
		"Author" => "Text",
		"Tags" => "Text"
	);
	
	static $has_one = array(
	);
	
	static $has_many = array(
	);
	
	static $many_many = array(
	);
	
	static $defaults = array(
		"ProvideComments" => true,
		'ShowInMenus' => false
	);
	
	static $extensions = array(
		'Hierarchy',
		'TrackBackDecorator',
		"Versioned('Stage', 'Live')"
	);
		
	/**
	 * Is WYSIWYG editing allowed?
	 * @var boolean
	 */
	static $allow_wysiwyg_editing = false;
	
	/**
	 * Is WYSIWYG editing enabled?
	 * Used in templates.
	 *
	 * @return boolean
	 */
	public function IsWYSIWYGEnabled() {
		return self::$allow_wysiwyg_editing;
	}
	
	/**
	 * Overload so that the default date is today.
	 */
	public function populateDefaults(){
		parent::populateDefaults();
		
		$this->setField('Date', date('Y-m-d H:i:s', strtotime('now')));
	}
	
	function getCMSFields() {
		Requirements::javascript('blog/javascript/bbcodehelp.js');
		Requirements::themedCSS('bbcodehelp');
		
		$firstName = Member::currentUser() ? Member::currentUser()->FirstName : '';
		$codeparser = new BBCodeParser();
		 
		$fields = parent::getCMSFields();
		
		if(!self::$allow_wysiwyg_editing) {
			$fields->removeFieldFromTab("Root.Content.Main","Content");
			$fields->addFieldToTab("Root.Content.Main", new TextareaField("Content", _t("BlogEntry.CN", "Content"), 20));
		}
		
		$fields->addFieldToTab("Root.Content.Main", new PopupDateTimeField("Date", _t("BlogEntry.DT", "Date")),"Content");
		$fields->addFieldToTab("Root.Content.Main", new TextField("Author", _t("BlogEntry.AU", "Author"), $firstName),"Content");
		
		if(!self::$allow_wysiwyg_editing) {
			$fields->addFieldToTab("Root.Content.Main", new LiteralField("BBCodeHelper", "<div id='BBCode' class='field'>" .
							"<a  id=\"BBCodeHint\" target='new'>" . _t("BlogEntry.BBH", "BBCode help") . "</a>" .
							"<div id='BBTagsHolder' style='display:none;'>".$codeparser->useable_tagsHTML()."</div></div>"));
		}
				
		$fields->addFieldToTab("Root.Content.Main", new TextField("Tags", _t("BlogEntry.TS", "Tags (comma sep.)")),"Content");
		return $fields;
	}
	
	/**
	 * Returns the tags added to this blog entry
	 */
	function TagsCollection() {
		$tags = split(" *, *", trim($this->Tags));
		$output = new DataObjectSet();
		
		foreach($tags as $tag) {
			$output->push(new ArrayData(array(
				'Tag' => $tag,
				'Link' => $this->getParent()->Link() . 'tag/' . urlencode($tag)
			)));
		}
		
		if($this->Tags) {
			return $output;
		}
	}

	/**
	 * Get the sidebar from the BlogHolder.
	 */
	function SideBar() {
		return $this->getParent()->SideBar();
	}
	
	/**
	 * Get a bbcode parsed summary of the blog entry
	 */
	function ParagraphSummary(){
		if(self::$allow_wysiwyg_editing) {
			return $this->obj('Content')->FirstParagraph('html');
		} else {
			$parser = new BBCodeParser($this->Content);
			$html = new HTMLText('Content');
			$html->setValue($parser->parse());
			return $html->FirstParagraph('html');
		}
	}
	
	/**
	 * Get the bbcode parsed content
	 */
	function ParsedContent() {
		if(self::$allow_wysiwyg_editing) {
			return $this->obj('Content');
		} else {
			$parser = new BBCodeParser($this->Content);
			$content = new Text('Content');
			$content->value = $parser->parse();
			
			return $content;
		}
	}
	
	/**
	 * Link for editing this blog entry
	 */
	function EditURL() {
		return $this->getParent()->Link('post') . '/' . $this->ID . '/';
	}
	
	/**
	 * Check to see if trackbacks are enabled.
	 */
	function TrackBacksEnabled() {
		return $this->getParent()->TrackBacksEnabled;
	}
	
	function trackbackping() {
		if($this->TrackBacksEnabled()) {
			return $this->extInstance('TrackBackDecorator')->trackbackping();
		} else {
			Director::redirect($this->Link());
		}
	}

	/**
	 * Call this to enable WYSIWYG editing on your blog entries.
	 * By default the blog uses BBCode
	 */
	static function allow_wysiwyg_editing() {
		self::$allow_wysiwyg_editing = true;
	}
}

class BlogEntry_Controller extends Page_Controller {
	static $allowed_actions = array(
		'trackbackping',
		'unpublishPost',
		'PageComments'
	);

	function init() {
		parent::init();
		
		Requirements::themedCSS('blog');
	}
	
	/**
	 * Gets a link to unpublish the blog entry
	 */
	function unpublishPost() {
		if(!Permission::check('ADMIN')) {
			Security::permissionFailure(
				$this,
				'Unpublishing blogs is an administrator task. Please log in.'
			);
		} else {
			$SQL_id = (int) $this->ID;
	
			$page = DataObject::get_by_id('SiteTree', $SQL_id);
			$page->deleteFromStage('Live');
			$page->flushCache();
	
			$page = DataObject::get_by_id('SiteTree', $SQL_id);
			$page->Status = 'Unpublished';

			Director::redirect($this->getParent()->Link());
		}		
	}
		
}
?>
