import mx.controls.Tree;
import mx.xpath.XPathAPI;
import flash.external.ExternalInterface;
import mx.utils.Delegate;

class TreeNavMenu extends MovieClip {
	var menuXML:XML;
	var pageXML:XML;
	var menuTree:Tree;
	var contentTextField:TextField;
	var baseURL:String;
	var textStyles:TextField.StyleSheet;
	
	function TreeNavMenu() {
		baseURL = "http://localhost/";
		contentTextField = _root.Content_txt;
		
		// menu
		menuXML = new XML();
		menuXML.ignoreWhite = true;
		menuXML.onLoad = Delegate.create(this, onMenuLoaded);
		
		// content
		pageXML = new XML();
		pageXML.ignoreWhite = true;
		pageXML.onLoad = Delegate.create(this, onContentLoaded);
		
		// styles
		textStyles = new TextField.StyleSheet();
		textStyles.onLoad = Delegate.create(this,onStyleLoaded);
		var textStylesURL = baseURL + 
			'mysite/flash/typography.css';
		debug("Loading " + textStylesURL);
		textStyles.load(textStylesURL);
		
		// 1. load menu
		var menuXMLURL = baseURL + "FlashTree/xml";
		debug("Loading " + menuXMLURL);
		menuXML.load(menuXMLURL);
	}

	function change(event:Object) {
		if (menuTree == event.target) {
			var pageXMLURL = this.baseURL + "api/v1/Page/" + 
			   menuTree.selectedItem.attributes.id + ".xml";
			debug("Lade " + pageXMLURL)
			pageXML.load(pageXMLURL);
		}
	}

	function onMenuLoaded(success:Boolean):Void {
		menuTree.dataProvider = menuXML.firstChild;
		menuTree.addEventListener("change", Delegate.create(this,change));
	}

	function onContentLoaded(event:Object) {
		var contentNode = XPathAPI.selectSingleNode(
		   pageXML.firstChild, 
		   '/*/Content'
		);
		var contentStr:String = contentNode.firstChild.nodeValue.split("\r\n").join("\n");
		this.contentTextField.text = contentStr;
	}
	
	function onStyleLoaded(success:Boolean):Void {
		contentTextField.styleSheet = textStyles;
	}
	
	function debug(txt:String) {
		trace(txt);
		ExternalInterface.call('console.log',txt);
	}

}