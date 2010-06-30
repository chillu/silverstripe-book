function methodTest( methodName ) {
	var v = jQuery("#form").validate();
	var method = $.validator.methods[methodName];
	var element = $("#firstname")[0];
	return function(value) {
		element.value = value;
		return method.call( v, value, element );
	};
}

module("methods");

test("digit", function() {
	var method = methodTest("digits");
	ok( method( "123" ), "Valid digits" );
	ok(!method( "123.000" ), "Invalid digits" );
	ok(!method( "123.000,00" ), "Invalid digits" );
	ok(!method( "123.0.0,0" ), "Invalid digits" );
	ok(!method( "x123" ), "Invalid digits" );
	ok(!method( "100.100,0,0" ), "Invalid digits" );
});

test("url", function() {
	var method = methodTest("url");
	ok( method( "http://bassistance.de/jquery/plugin.php?bla=blu" ), "Valid url" );
	ok( method( "https://bassistance.de/jquery/plugin.php?bla=blu" ), "Valid url" );
	ok( method( "ftp://bassistance.de/jquery/plugin.php?bla=blu" ), "Valid url" );
	ok( method( "http://www.føtex.dk/" ), "Valid url, danish unicode characters" );
	ok( method( "http://bösendorfer.de/" ), "Valid url, german unicode characters" );
	ok( method( "http://192.168.8.5" ), "Valid IP Address" )
	ok(!method( "http://192.168.8." ), "Invalid IP Address" )
	ok(!method( "http://bassistance" ), "Invalid url" ); // valid
	ok(!method( "http://bassistance." ), "Invalid url" ); // valid
	ok(!method( "http://bassistance,de" ), "Invalid url" );
	ok(!method( "http://bassistance;de" ), "Invalid url" );
	ok(!method( "http://.bassistancede" ), "Invalid url" );
	ok(!method( "bassistance.de" ), "Invalid url" );
});

test("url2 (tld optional)", function() {
	var method = methodTest("url2");
	ok( method( "http://bassistance.de/jquery/plugin.php?bla=blu" ), "Valid url" );
	ok( method( "https://bassistance.de/jquery/plugin.php?bla=blu" ), "Valid url" );
	ok( method( "ftp://bassistance.de/jquery/plugin.php?bla=blu" ), "Valid url" );
	ok( method( "http://www.føtex.dk/" ), "Valid url, danish unicode characters" );
	ok( method( "http://bösendorfer.de/" ), "Valid url, german unicode characters" );
	ok( method( "http://192.168.8.5" ), "Valid IP Address" )
	ok(!method( "http://192.168.8." ), "Invalid IP Address" )
	ok( method( "http://bassistance" ), "Invalid url" );
	ok( method( "http://bassistance." ), "Invalid url" );
	ok(!method( "http://bassistance,de" ), "Invalid url" );
	ok(!method( "http://bassistance;de" ), "Invalid url" );
	ok(!method( "http://.bassistancede" ), "Invalid url" );
	ok(!method( "bassistance.de" ), "Invalid url" );
});

test("email", function() {
	var method = methodTest("email");
	ok( method( "name@domain.tld" ), "Valid email" );
	ok( method( "name@domain.tl" ), "Valid email" );
	ok( method( "bart+bart@tokbox.com" ), "Valid email" );
	ok( method( "bart+bart@tokbox.travel" ), "Valid email" );
	ok( method( "n@d.tld" ), "Valid email" );
	ok( method( "ole@føtex.dk"), "Valid email" );
	ok( method( "jörn@bassistance.de"), "Valid email" );
	ok( method( "bla.blu@g.mail.com"), "Valid email" );
	ok( method( "\"Scott Gonzalez\"@example.com" ), "Valid email" );
	ok( method( "\"Scott González\"@example.com" ), "Valid email" );
	ok( method( "\"name.\"@domain.tld" ), "Valid email" ); // valid without top label
	ok( method( "\"name,\"@domain.tld" ), "Valid email" ); // valid without top label
	ok( method( "\"name;\"@domain.tld" ), "Valid email" ); // valid without top label
	ok(!method( "name" ), "Invalid email" );
	ok(!method( "name@" ), "Invalid email" );
	ok(!method( "name@domain" ), "Invalid email" );
	ok(!method( "name.@domain.tld" ), "Invalid email" );
	ok(!method( "name,@domain.tld" ), "Invalid email" );
	ok(!method( "name;@domain.tld" ), "Invalid email" );
});

test("email2 (tld optional)", function() {
	var method = methodTest("email2");
	ok( method( "name@domain.tld" ), "Valid email" );
	ok( method( "name@domain.tl" ), "Valid email" );
	ok( method( "bart+bart@tokbox.com" ), "Valid email" );
	ok( method( "bart+bart@tokbox.travel" ), "Valid email" );
	ok( method( "n@d.tld" ), "Valid email" );
	ok( method( "ole@føtex.dk"), "Valid email" );
	ok( method( "jörn@bassistance.de"), "Valid email" );
	ok( method( "bla.blu@g.mail.com"), "Valid email" );
	ok( method( "\"Scott Gonzalez\"@example.com" ), "Valid email" );
	ok( method( "\"Scott González\"@example.com" ), "Valid email" );
	ok( method( "\"name.\"@domain.tld" ), "Valid email" ); // valid without top label
	ok( method( "\"name,\"@domain.tld" ), "Valid email" ); // valid without top label
	ok( method( "\"name;\"@domain.tld" ), "Valid email" ); // valid without top label
	ok(!method( "name" ), "Invalid email" );
	ok(!method( "name@" ), "Invalid email" );
	ok( method( "name@domain" ), "Invalid email" );
	ok(!method( "name.@domain.tld" ), "Invalid email" );
	ok(!method( "name,@domain.tld" ), "Invalid email" );
	ok(!method( "name;@domain.tld" ), "Invalid email" );
});

test("number", function() {
	var method = methodTest("number");
	ok( method( "123" ), "Valid number" );
	ok( method( "-123" ), "Valid number" );
	ok( method( "123,000" ), "Valid number" );
	ok( method( "-123,000" ), "Valid number" );
	ok( method( "123,000.00" ), "Valid number" );
	ok( method( "-123,000.00" ), "Valid number" );
	ok(!method( "123.000,00" ), "Invalid number" );
	ok(!method( "123.0.0,0" ), "Invalid number" );
	ok(!method( "x123" ), "Invalid number" );
	ok(!method( "100.100,0,0" ), "Invalid number" );
	
	ok( method( "" ), "Blank is valid" );
	ok( method( "123" ), "Valid decimal" );
	ok( method( "123000" ), "Valid decimal" );
	ok( method( "123000.12" ), "Valid decimal" );
	ok( method( "-123000.12" ), "Valid decimal" );
	ok( method( "123.000" ), "Valid decimal" );
	ok( method( "123,000.00" ), "Valid decimal" );
	ok( method( "-123,000.00" ), "Valid decimal" );
	ok(!method( "1230,000.00" ), "Invalid decimal" );
	ok(!method( "123.0.0,0" ), "Invalid decimal" );
	ok(!method( "x123" ), "Invalid decimal" );
	ok(!method( "100.100,0,0" ), "Invalid decimal" );
});

test("numberDE", function() {
	var method = methodTest("numberDE");
	ok( method( "123" ), "Valid numberDE" );
	ok( method( "-123" ), "Valid numberDE" );
	ok( method( "123.000" ), "Valid numberDE" );
	ok( method( "-123.000" ), "Valid numberDE" );
	ok( method( "123.000,00" ), "Valid numberDE" );
	ok( method( "-123.000,00" ), "Valid numberDE" );
	ok(!method( "123,000.00" ), "Invalid numberDE" );
	ok(!method( "123,0,0.0" ), "Invalid numberDE" );
	ok(!method( "x123" ), "Invalid numberDE" );
	ok(!method( "100,100.0.0" ), "Invalid numberDE" );
	
	ok( method( "" ), "Blank is valid" );
	ok( method( "123" ), "Valid decimalDE" );
	ok( method( "123000" ), "Valid decimalDE" );
	ok( method( "123000,12" ), "Valid decimalDE" );
	ok( method( "-123000,12" ), "Valid decimalDE" );
	ok( method( "123.000" ), "Valid decimalDE" );
	ok( method( "123.000,00" ), "Valid decimalDE" );
	ok( method( "-123.000,00" ), "Valid decimalDE" )
	ok(!method( "123.0.0,0" ), "Invalid decimalDE" );
	ok(!method( "x123" ), "Invalid decimalDE" );
	ok(!method( "100,100.0.0" ), "Invalid decimalDE" );
});

test("date", function() {
	var method = methodTest("date");
	ok( method( "06/06/1990" ), "Valid date" );
	ok( method( "6/6/06" ), "Valid date" );
	ok(!method( "1990x-06-06" ), "Invalid date" );
});

test("dateISO", function() {
	var method = methodTest("dateISO");
	ok( method( "1990-06-06" ), "Valid date" );
	ok( method( "1990/06/06" ), "Valid date" );
	ok( method( "1990-6-6" ), "Valid date" );
	ok( method( "1990/6/6" ), "Valid date" );
	ok(!method( "1990-106-06" ), "Invalid date" );
	ok(!method( "190-06-06" ), "Invalid date" );
});

test("dateDE", function() {
	var method = methodTest("dateDE");
	ok( method( "03.06.1984" ), "Valid dateDE" );
	ok( method( "3.6.84" ), "Valid dateDE" );
	ok(!method( "6-6-06" ), "Invalid dateDE" );
	ok(!method( "1990-06-06" ), "Invalid dateDE" );
	ok(!method( "06/06/1990" ), "Invalid dateDE" );
	ok(!method( "6/6/06" ), "Invalid dateDE" );
});

test("required", function() {
	var v = jQuery("#form").validate(),
		method = $.validator.methods.required,
		e = $('#text1, #hidden2, #select1, #select2');
	ok( method.call( v, e[0].value, e[0]), "Valid text input" );
	ok(!method.call( v, e[1].value, e[1]), "Invalid text input" );
	ok(!method.call( v, e[2].value, e[2]), "Invalid select" );
	ok( method.call( v, e[3].value, e[3]), "Valid select" );
	
	e = $('#area1, #area2, #pw1, #pw2');
	ok( method.call( v, e[0].value, e[0]), "Valid textarea" );
	ok(!method.call( v, e[1].value, e[1]), "Invalid textarea" );
	ok( method.call( v, e[2].value, e[2]), "Valid password input" );
	ok(!method.call( v, e[3].value, e[3]), "Invalid password input" );
	
	e = $('#radio1, #radio2, #radio3');
	ok(!method.call( v, e[0].value, e[0]), "Invalid radio" );
	ok( method.call( v, e[1].value, e[1]), "Valid radio" );
	ok( method.call( v, e[2].value, e[2]), "Valid radio" );
	
	e = $('#check1, #check2');
	ok( method.call( v, e[0].value, e[0]), "Valid checkbox" );
	ok(!method.call( v, e[1].value, e[1]), "Invalid checkbox" );
	
	e = $('#select1, #select2, #select3, #select4');
	ok(!method.call( v, e[0].value, e[0]), "Invalid select" );
	ok( method.call( v, e[1].value, e[1]), "Valid select" );
	ok( method.call( v, e[2].value, e[2]), "Valid select" );
	ok( method.call( v, e[3].value, e[3]), "Valid select" );
});

test("required with dependencies", function() {
	var v = jQuery("#form").validate(),
		method = $.validator.methods.required,
    	e = $('#hidden2, #select1, #area2, #radio1, #check2');
	ok( method.call( v, e[0].value, e[0], "asffsaa"), "Valid text input due to depencie not met" );
	ok(!method.call( v, e[0].value, e[0], "input"), "Invalid text input" );
	ok( method.call( v, e[0].value, e[0], function() { return false; }), "Valid text input due to depencie not met" );
	ok(!method.call( v, e[0].value, e[0], function() { return true; }), "Invalid text input" );
	ok( method.call( v, e[1].value, e[1], "asfsfa"), "Valid select due to dependency not met" );
	ok(!method.call( v, e[1].value, e[1], "input"), "Invalid select" );
	ok( method.call( v, e[2].value, e[2], "asfsafsfa"), "Valid textarea due to dependency not met" );
	ok(!method.call( v, e[2].value, e[2], "input"), "Invalid textarea" );
	ok( method.call( v, e[3].value, e[3], "asfsafsfa"), "Valid radio due to dependency not met" );
	ok(!method.call( v, e[3].value, e[3], "input"), "Invalid radio" );
	ok( method.call( v, e[4].value, e[4], "asfsafsfa"), "Valid checkbox due to dependency not met" );
	ok(!method.call( v, e[4].value, e[4], "input"), "Invalid checkbox" );
});

test("minLength", function() {
	var v = jQuery("#form").validate(),
		method = $.validator.methods.minLength,
		param = 2,
		e = $('#text1, #text2, #text3');
	ok( method.call( v, e[0].value, e[0], param), "Valid text input" );
	ok(!method.call( v, e[1].value, e[1], param), "Invalid text input" );
	ok( method.call( v, e[2].value, e[2], param), "Valid text input" );
	
	e = $('#check1, #check2, #check3');
	ok(!method.call( v, e[0].value, e[0], param), "Valid checkbox" );
	ok( method.call( v, e[1].value, e[1], param), "Valid checkbox" );
	ok( method.call( v, e[2].value, e[2], param), "Invalid checkbox" );
	
	e = $('#select1, #select2, #select3, #select4, #select5');
	ok(method.call( v, e[0].value, e[0], param), "Valid select" );
	ok(!method.call( v, e[1].value, e[1], param), "Invalid select" );
	ok( method.call( v, e[2].value, e[2], param), "Valid select" );
	ok( method.call( v, e[3].value, e[3], param), "Valid select" );
	ok( method.call( v, e[3].value, e[3], param), "Valid select" );
});

test("maxLength", function() {
	var v = jQuery("#form").validate();
	var method = $.validator.methods.maxLength,
		param = 4,
		e = $('#text1, #text2, #text3');
	ok( method.call( v, e[0].value, e[0], param), "Valid text input" );
	ok( method.call( v, e[1].value, e[1], param), "Valid text input" );
	ok(!method.call( v, e[2].value, e[2], param), "Invalid text input" );
	
	e = $('#check1, #check2, #check3');
	ok( method.call( v, e[0].value, e[0], param), "Valid checkbox" );
	ok( method.call( v, e[1].value, e[1], param), "Invalid checkbox" );
	ok(!method.call( v, e[2].value, e[2], param), "Invalid checkbox" );
	
	e = $('#select1, #select2, #select3, #select4');
	ok( method.call( v, e[0].value, e[0], param), "Valid select" );
	ok( method.call( v, e[1].value, e[1], param), "Valid select" );
	ok( method.call( v, e[2].value, e[2], param), "Valid select" );
	ok(!method.call( v, e[3].value, e[3], param), "Invalid select" );
});

test("rangeLength", function() {
	var v = jQuery("#form").validate();
	var method = $.validator.methods.rangeLength,
		param = [2, 4],
		e = $('#text1, #text2, #text3');
	ok( method.call( v, e[0].value, e[0], param), "Valid text input" );
	ok(!method.call( v, e[1].value, e[1], param), "Invalid text input" );
	ok(!method.call( v, e[2].value, e[2], param), "Invalid text input" );
});

test("minValue", function() {
	var v = jQuery("#form").validate();
	var method = $.validator.methods.minValue,
		param = 8,
		e = $('#value1, #value2, #value3');
	ok(!method.call( v, e[0].value, e[0], param), "Invalid text input" );
	ok( method.call( v, e[1].value, e[1], param), "Valid text input" );
	ok( method.call( v, e[2].value, e[2], param), "Valid text input" );
});

test("maxValue", function() {
	var v = jQuery("#form").validate();
	var method = $.validator.methods.maxValue,
		param = 12,
		e = $('#value1, #value2, #value3');
	ok( method.call( v, e[0].value, e[0], param), "Valid text input" );
	ok( method.call( v, e[1].value, e[1], param), "Valid text input" );
	ok(!method.call( v, e[2].value, e[2], param), "Invalid text input" );
});

test("rangeValue", function() {
	var v = jQuery("#form").validate();
	var method = $.validator.methods.rangeValue,
		param = [4,12],
		e = $('#value1, #value2, #value3');
	ok(!method.call( v, e[0].value, e[0], param), "Invalid text input" );
	ok( method.call( v, e[1].value, e[1], param), "Valid text input" );
	ok(!method.call( v, e[2].value, e[2], param), "Invalid text input" );
});

test("equalTo", function() {
	var v = jQuery("#form").validate();
	var method = $.validator.methods.equalTo,
		e = $('#text1, #text2');
	ok( method.call( v, "Test", e[0], "#text1"), "Text input" );
	ok( method.call( v, "T", e[1], "#text2"), "Another one" );
});


test("method default messages", function() {
	var m = $.validator.methods;
	$.each(m, function(key) {
		ok( jQuery.validator.messages[key], key + " has a default message." );
	});
});

module("additional methods");

test("phone (us)", function() {
	var method = methodTest("phone");
	ok( method( "1(212)-999-2345" ), "Valid us phone number" );
	ok( method( "212 999 2344" ), "Valid us phone number" );
	ok( method( "212-999-0983" ), "Valid us phone number" );
	ok(!method( "111-123-5434" ), "Invalid us phone number" );
	ok(!method( "212 123 4567" ), "Invalid us phone number" );
});

test("dateITA", function() {
	var method = methodTest("dateITA");
	ok( method( "01/01/1900" ), "Valid date ITA" );
	ok(!method( "01/13/1990" ), "Invalid date ITA" );
	ok(!method( "01.01.1900" ), "Invalid date ITA" );
});

test("creditcard", function() {
	var method = methodTest("creditcard");
	ok( method( "446-667-651" ), "Valid creditcard number" );
	ok( !method( "asdf" ), "Invalid creditcard number" );
})