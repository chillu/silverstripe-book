<?php
class CommunityAdmin extends ModelAdmin {

	static $managed_models = array(
		'Developer',
		'Skill',
		'Reference',
	);
	
	static $url_segment = 'community'; 
}
?>