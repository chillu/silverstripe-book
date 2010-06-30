(function() {
	tinymce.PluginManager.requireLangPack("../../tinymce_ssbuttons");
	var each = tinymce.each;

	tinymce.create('tinymce.plugins.SSButtons', {
		/**
		 * Returns information about the plugin as a name/value array.
		 * The current keys are longname, author, authorurl, infourl and version.
		 *
		 * @returns Name/value array containing information about the plugin.
		 * @type Array 
		 */
		getInfo : function() {
			return {
				longname : 'Special buttons for SilverStripe CMS',
				author : 'Sam Minnée',
				authorurl : 'http://www.siverstripe.com/',
				infourl : 'http://www.silverstripe.com/',
				version : "1.0"
			};
		},


		init : function(ed, url) {
	    	/**
	    	 * These map the action buttons to the IDs of the forms that they open/close
	    	 */
	    	forms = {
	    	    'sslink' : 'Form_EditorToolbarLinkForm',
	    	    'ssimage' : 'Form_EditorToolbarImageForm',
	    	    'ssflash' : 'Form_EditorToolbarFlashForm'
	    	};

	        ed.addButton('sslink', {title : ed.getLang('tinymce_ssbuttons.insertlink'), cmd : 'sslink', 'class' : 'mce_link'}); 
	        ed.addButton('ssimage', {title : ed.getLang('tinymce_ssbuttons.insertimage'), cmd : 'ssimage', 'class' : 'mce_image'}); 
	        ed.addButton('ssflash', {title : ed.getLang('tinymce_ssbuttons.insertflash'), cmd : 'ssflash', 'class' : 'mce_flash', 'image': url + '/img/flash.gif'}); 

            /**
             * Show a side panel, hiding others
             * If showCommand isn't set, then this will simply hide panels
             */
	    	function showSidePanel(showCommand, hideCommands) {
	    	    hideCommands.each(function(command) { 
	    	        ed.controlManager.setActive(command,false);
	    	        Element.hide(forms[command]); 
	    	    });

                var showForm = null;
                if(forms[showCommand]) {
                    showForm = $(forms[showCommand]);
                    showForm.toggle(ed);
                }

                if(!showForm || showForm.style.display == "none") {
	        		ed.controlManager.setActive(showCommand, false);
	        		// Can't use $('contentPanel'), as its in a different window
	        		window.parent.document.getElementById('contentPanel').style.display = "none";
	    		} else {
	        		ed.controlManager.setActive(showCommand, true);
	        		window.parent.document.getElementById('contentPanel').style.display = "block";
	    		}
	    		window.onresize();
	    	}

            ed.addCommand("ssclosesidepanel", function(ed) {
                showSidePanel('', [ 'sslink', 'ssimage', 'ssflash' ]);
            });

		    ed.addCommand("sslink", function(ed) {
		        showSidePanel('sslink', [ 'ssimage', 'ssflash' ]);
			});

			ed.addCommand("ssimage", function(ed) {
		        showSidePanel('ssimage', [ 'sslink', 'ssflash' ]);
			});

			ed.addCommand("ssflash", function(ed) {
		        showSidePanel('ssflash', [ 'ssimage', 'sslink' ]);
			});

			ed.onNodeChange.add(function(ed, o) {
	    	    $('Form_EditorToolbarLinkForm').updateSelection(ed);
			    $('Form_EditorToolbarLinkForm').respondToNodeChange(ed);
	        });
	        ed.onKeyUp.add(function(ed, o) {
	    	    $('Form_EditorToolbarLinkForm').updateSelection(ed);
		    });
		}			
	});

	// Adds the plugin class to the list of available TinyMCE plugins
	tinymce.PluginManager.add("../../tinymce_ssbuttons", tinymce.plugins.SSButtons);
})();