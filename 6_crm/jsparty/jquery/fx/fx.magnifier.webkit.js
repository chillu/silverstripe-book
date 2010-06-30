(function($) {

	$.fn.extend({
		magnifier: function(options) {
			var args = Array.prototype.slice.call(arguments, 1);
			
			return this.each(function() {
				if (typeof options == "string") {
					var inst = $.data(this, "fx-magnifier");
					if(inst) inst[options].apply(inst, args);

				} else if(!$.data(this, "fx-magnifier"))
					new $.fx.magnifier(this, options);
			});
		}
	});
	
	$.fx.magnifier = function(el,options) {
		
		var self = this; this.items = []; this.element = $(el);
		this.options = $.extend({}, options); var o = this.options;
		$(el).addClass("fx-magnifier").data("fx-magnifier", this);
		
		o.distance = o.distance || 150;
		o.magnification = o.magnification || 2;
		o.items = o.items || "> *";
		
		$(document).bind("mousemove.magnifier", function(e) {
			if(!self.disabled) self.magnify.apply(self, [e]);
		});
		
	}
	
	$.extend($.fx.magnifier.prototype, {
		destroy: function() {
			if(!$.data(this.element[0], 'fx-magnifier')) return;
			this.element
				.removeClass("fx-magnifier fx-magnifier-disabled")
				.removeData("fx-magnifier")
				.unbind(".magnifier");
		},
		enable: function() {
			this.element.removeClass("fx-magnifier-disabled");
			this.disabled = false;
		},
		disable: function() {
			this.element.addClass("fx-magnifier-disabled");
			this.reset();
			this.disabled = true;
		},
		reset: function(e) {
			$(this.options.items, this.element).each(function() {
				this.style.webkitTransform = "";
				if(this.options.opacity) $(this).css('opacity', o.opacity.min);
				if(this.options.zIndex) $(this).css("z-index", "");
			});
		},
		magnify: function(e) {

			//Prepare shortcuts
			var p = [e.pageX,e.pageY], o = this.options, c, distance = 1;
			var self = this;
	
			//Loop through the items
			$(o.items, this.element).each(function(){

				var olddistance = distance;
				distance = Math.sqrt(
					  Math.pow(e.pageX - $(this).offset().left - (this.offsetWidth/2), 2)
					+ Math.pow(e.pageY - $(this).offset().top - (this.offsetHeight/2), 2)
				);

				if(distance < o.distance) {
	
					self.current = distance < olddistance ? this : self.current;

					var gen = ""; //Generate webkit string
					for(var i in o.transformations) { gen += i+"("+o.transformations[i].apply(this, [distance/o.distance])+")"; }
					this.style.webkitTransform = gen;
					
					if(o.opacity) $(this).css('opacity', o.opacity.max-(distance/o.distance) < o.opacity.min ? o.opacity.min : o.opacity.max-(distance/o.distance));
					
				} else {
					$(this).css("webkitTransform", "");
					if(o.opacity) $(this).css('opacity', o.opacity.min);
				}
				
				if(o.zIndex) $(this).css("z-index", "");

			});
			
			if(this.options.zIndex && this.current) $(this.current).css("z-index", this.options.zIndex);
			
			
		}
	});

})(jQuery);
