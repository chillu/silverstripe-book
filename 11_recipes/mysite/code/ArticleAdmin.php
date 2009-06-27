<?php
class ArticleAdmin extends ModelAdmin {
	static $managed_models = array(
		'Article'
	);
	
	static $url_segment = 'articles';
}
?>