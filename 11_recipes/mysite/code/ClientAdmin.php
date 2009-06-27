<?php
class ClientAdmin extends ModelAdmin {
	
	static $managed_models = array(
	   'Client'
	);
	
	static $model_importers = array(
	   'Client' => 'ClientCsvBulkLoader', 
	);
	
	static $url_segment = 'clients';
}
?>