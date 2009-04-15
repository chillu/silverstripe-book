<div class="typography">
		<h2>$Title</h2>
	
		<% if Jobs %>
		<ul class="jobs">
		<% control CurrentJob %>
			<h3>$Title</h3>
			<p class="description">$Description</p>
			<p class="location">$Location</p>
			<p class="expirydate">$ExpiryDate.Nice</p>
		<% end_control %>
		</ul>
		<% end_if %>
	
		$Content
		
		<p><a href="$CurrentJob.JobCategory.Link">Zur&uuml;ck zur Kategorie</a></p>
</div>