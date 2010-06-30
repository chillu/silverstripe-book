<?php
/**
 * A special kind of complex table field for manipulating assets.
 *
 * @package cms
 * @subpackage assets
 */
class AssetTableField extends ComplexTableField {
	
	protected $folder;
	
	protected $template = "AssetTableField";
	
	protected $permissions = array(
        "edit",
        "delete",
        //"export",
    );
	function __construct($controller, $name, $sourceClass, $fieldList, $detailFormFields, $sourceFilter = "", $sourceSort = "", $sourceJoin = "") {
		parent::__construct($controller, $name, $sourceClass, $fieldList, $detailFormFields, $sourceFilter, $sourceSort, $sourceJoin);

		Requirements::javascript(CMS_DIR . '/javascript/AssetTableField.js');
		
		$SNG_file = singleton('File');
		
		// If search was request, filter the results here
		$SQL_search = (!empty($_REQUEST['FileSearch'])) ? Convert::raw2sql($_REQUEST['FileSearch']) : null;
		if($SQL_search) {
			$searchFilters = array();
			foreach($SNG_file->searchableFields() as $fieldName => $fieldSpec) {
				if(strpos($fieldName, '.') === false) $searchFilters[] = "`$fieldName` LIKE '%{$SQL_search}%'";
			}
			$this->sourceFilter = '(' . implode(' OR ', $searchFilters) . ')';
		}		
		
		$this->sourceSort = 'Title';
		$this->Markable = true;
	}
	
	function FieldHolder() {
		Requirements::javascript('cms/javascript/ImageEditor/Activator.js');

		return parent::FieldHolder();
	}
	
	function setFolder($folder) {
		$this->folder = $folder;
		$this->sourceFilter .= ($this->sourceFilter) ? " AND " : "";
		$this->sourceFilter .= " ParentID = '" . $folder->ID . "' AND ClassName <> 'Folder'";
	}
	
	function Folder() {
		return $this->folder;
	}
	
	function sourceID() {
		if($this->folder) return $this->folder->ID;
	}
	
	/**
	 * Get the pop-up fields for the given record.
	 */
	function getCustomFieldsFor($childData) {
		if(!$childData) {
			user_error("AssetTableField::DetailForm No record found");
			return null;
		}
		
		if($childData->ParentID) {
			$folder = DataObject::get_by_id('File', $childData->ParentID );
		} else {
			$folder = singleton('Folder');
		}
		
		$urlLink = "<div class='field readonly'>";
		$urlLink .= "<label class='left'>"._t('AssetTableField.URL','URL')."</label>";
		$urlLink .= "<span class='readonly'><a href='{$childData->Link()}'>{$childData->RelativeLink()}</a></span>";
		$urlLink .= "</div>";
		
		$detailFormFields = new FieldSet(
			new TabSet("BottomRoot",
				$mainTab = new Tab('Main',
					new TextField("Title", _t('AssetTableField.TITLE','Title')),
					new TextField("Name", _t('AssetTableField.FILENAME','Filename')),
					new LiteralField("AbsoluteURL", $urlLink),
					new ReadonlyField("FileType", _t('AssetTableField.TYPE','Type')),
					new ReadonlyField("Size", _t('AssetTableField.SIZE','Size'), $childData->getSize()),
					new DropdownField("OwnerID", _t('AssetTableField.OWNER','Owner'), Member::mapInCMSGroups()),
					new DateField_Disabled("Created", _t('AssetTableField.CREATED','First uploaded')),
					new DateField_Disabled("LastEdited", _t('AssetTableField.LASTEDIT','Last changed'))
				)
			)
		);
		$mainTab->setTitle(_t('AssetTableField.MAIN', 'Main'));

		if(is_a($childData,'Image')) {
			$tab = $detailFormFields->findOrMakeTab("BottomRoot.Image", _t('AssetTableField.IMAGE', 'Image'));
			
			$big = $childData->URL;
			$thumbnail = $childData->getFormattedImage('AssetLibraryPreview')->URL;
			
			// Hmm this required the translated string to be appended to BottomRoot to add this to the Main tab
			$detailFormFields->addFieldToTab('BottomRoot.Main',
				new ReadonlyField("Dimensions", _t('AssetTableField.DIM','Dimensions'))
			);

			$tab->push(
				new LiteralField("ImageFull",
					"<img id='thumbnailImage' src='{$thumbnail}?r=" . rand(1,100000)  . "' alt='{$childData->Name}' />"				)
			);
		}

		if($childData && $childData->hasMethod('BackLinkTracking')) {
			$links = $childData->BackLinkTracking();
			if($links->exists()) {
				foreach($links as $link) {
					$backlinks[] = "<li><a href=\"admin/show/$link->ID\">" . $link->Breadcrumbs(null,true). "</a></li>";
				}
				$backlinks = "<div style=\"clear:left\">". _t('AssetTableField.PAGESLINKING','The following pages link to this file:') ."<ul>" . implode("",$backlinks) . "</ul>";
			}
			if(!isset($backlinks)) $backlinks = "<p>". _t('AssetTableField.NOLINKS',"This file hasn't been linked to from any pages.") ."</p>";
			$detailFormFields->addFieldToTab("BottomRoot.Links", new LiteralField("Backlinks", $backlinks));
		}
		
		// the ID field confuses the Controller-logic in finding the right view for ReferencedField
		$detailFormFields->removeByName('ID');
		
		if($childData) $childData->extend('updateCMSFields', $detailFormFields);
		
		return $detailFormFields;
	}

	/**
	 * Provide some HTML for a search form, to be 
	 * added above the AssetTable field, allowing
	 * a user to filter the current table's files
	 * by their filename.
	 *
	 * @return string HTML for search form
	 */
	function SearchForm() {
		$searchFields = new FieldGroup(
			new TextField('FileSearch', _t('MemberTableField.SEARCH', 'Search')),
			new HiddenField("ctf[ID]", '', $this->ID),
			new HiddenField('FileFieldName', '', $this->name)
		);

		$actionFields = new LiteralField(
			'FileFilterButton',
			'<input type="submit" class="action" name="FileFilterButton" value="' . _t('MemberTableField.FILTER', 'Filter') . '" id="FileFilterButton"/>'
		);
		
		$fieldContainer = new FieldGroup(
			$searchFields,
			$actionFields
		);

		return $fieldContainer->FieldHolder();
	}
	
}

?>