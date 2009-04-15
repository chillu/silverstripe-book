<div class="typography">
		<h2>$Title</h2>
	
		<% if Children %>
		<ul class="jobcategories">
		<% control Children %>
			<li class="jobcategory">
				<h3><a href="$Link">$Title ($ActiveJobs.Count)</a></h3>
				<p class="description">$Content</p>
			</li>
		<% end_control %>
		</ul>
		<% end_if %>
	
		$Content
		$Form
</div>