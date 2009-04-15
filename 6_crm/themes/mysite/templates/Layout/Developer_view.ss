<div class="typography">
		<div id="Content">
			
		<h2>$Title</h2>
	
		$Form
		
		$ExtraForm

		<% control currentRecord %>
		
			<h3>Referenzen</h3>
			<% if References %>
			<ul class="referenceItems">
			<% control References %>
				<li>
					<a href="$URL">$Title</a><br />
					$ScreenshotImage.WebsiteThumbnail
				</li>
			<% end_control %>
			</ul>
			<% else %>
				<p class="message">Keine Referenzen gefunden</p>
			<% end_if %>
			
		<% end_control %>
	
		</div>
</div>