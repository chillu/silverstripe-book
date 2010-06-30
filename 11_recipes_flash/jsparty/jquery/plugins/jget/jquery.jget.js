/**
 * jget plugin
 * @author Alexandre Magno
 * @desc get a query string to be accessible for javascript
 * @version 1.0
 * @example
 *
 * http://www.foo.com/test.php?var1=test1
 * var outputQuery = $.jget['var1'];
 * $.debug(outputQuery);
 * //Will show 'test1'
 *
 *
 * @license free
 * @param bool vertical, bool horizontal
 * @site http://blog.alexandremagno.net
 *
 */

jQuery.extend({

	//starting the jget object
	jget: {},
	//get the url
	url: window.location.href.replace(/^[^\?]+\??/,''),
	//get the queryString
	parseQuery: function ( query ) {
	   var Params = {};
	   if ( ! query ) {return Params;}// return empty object
	   var Pairs = query.split(/[;&]/);
	   for ( var i = 0; i < Pairs.length; i++ ) {
	      var KeyVal = Pairs[i].split('=');
	      if ( ! KeyVal || KeyVal.length != 2 ) {continue;}
	      var key = unescape( KeyVal[0] );
	      var val = unescape( KeyVal[1] );
	      val = val.replace(/\+/g, ' ');
	      Params[key] = val;
	   }
	   return Params;
	},
	//Make the jget object available to jQuery.extend
	getQueryString: function() {
		this.jget = this.parseQuery(this.url);
	},
	//debugging
	debug: function(message) {

		if(!$.browser.msie) {

			console.info(message);

		} else if($.browser.safari) {

			window.console.log(message);

		} else {

			alert(message);
		}

	}

});

//start the plugin
jQuery.getQueryString();// MOD Silverstripe 06/05/2008

