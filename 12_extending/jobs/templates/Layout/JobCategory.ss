<div class="typography">
		<h2><a href="$Link">$Title</a></h2>
	
		<% if Jobs %>
		<ul class="jobs">
		<% control ActiveJobs %>
			<li class="job" id="Job{$ID}">
				<h3><a href="$Link">$Title</a></h3>
				<p class="description">$Description</p>
				<p class="location">$Location</p>
				<p class="expirydate">$ExpiryDate.Nice</p>
			</li>
		<% end_control %>
		</ul>
		<% end_if %>
	
		$Content
		
		<% if CurrentMember %>
			<p class="subscribe">
				<% if MemberIsSubscribed %> 
					<strong>
					  <a href="{$Link}unsubscribe">
						Your are currently receiving new job postings
						by email postings – unsubscribe?
					  </a>
					</strong>
				<% else %>
					<strong>
					  <a href="{$Link}subscribe">
					    Your are currently not receiving new job postings
						by email. Would you like to subscribe?
					  </a>
					</strong>
				<% end_if %>
			</p>
		<% end_if %>

		<h2>Create a new job posting</h2>
		<% if CurrentMember %>
			$Form
		<% else %>
			<p>
				You must be logged-in to create new job postings
				<a href="Security/login">Login</a> or 
				<a href="register">Register</a>
			</p>
		<% end_if %>
		
</div>