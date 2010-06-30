/**
 * @author Programmer
 */
$(document).ready(function(){

	for (var test in $.jget) {
		$.debug(test+ ' = ' + $.jget[test] );
	}

	$("#all").center({

		vertical: false
	})

});