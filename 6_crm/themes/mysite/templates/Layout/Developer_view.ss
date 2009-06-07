<div class="typography">
		<div id="Content">
			
		<h2>$Title</h2>
	
		$Form
		
		$ExtraForm

		<% control currentRecord %>
			<h3>References</h3>
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
				<p class="message">No References found</p>
			<% end_if %>
			
		<% end_control %>
	
		</div>
</div>