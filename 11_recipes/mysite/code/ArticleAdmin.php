<?php
class ArticleAdmin extends ModelAdmin {
	protected static $managed_models = array(
		'Article'
	);
	
	static $url_segment = 'articles';
}
?>