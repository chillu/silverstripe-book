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
					    Sie erhalten neue Jobangebote per Email 
					    - abbestellen?
					  </a>
					</strong>
				<% else %>
					<strong>
					  <a href="{$Link}subscribe">
					    Senden Sie mir neue Jobangebote in dieser 
					    Kategorie per Email
					  </a>
					</strong>
				<% end_if %>
			</p>
		<% end_if %>

		<h2>Neuen Job eintragen</h2>
		<% if CurrentMember %>
			$Form
		<% else %>
			<p>
				Sie müssen eingeloggt sein um einen Job einzutragen:
				<a href="Security/login">Login</a> oder 
				<a href="registrieren">Registrieren</a>
			</p>
		<% end_if %>
		
</div>