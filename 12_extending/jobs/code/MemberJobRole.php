<?php
class MemberJobRole extends DataObjectDecorator {
	function extraStatics() {
		return array(
			'belongs_many_many' => array(
				'JobCategorySubscriptions' => 'JobCategory'
			)
		);
	}
}
?>