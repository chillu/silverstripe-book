<?php
class ClientAdmin extends ModelAdmin {
	
	protected static $managed_models = array(
	   'Client'
	);
	
	protected static $model_importers = array(
	   'Client' => 'ClientCsvBulkLoader', 
	);
	
	static $url_segment = 'clients';
}
?>