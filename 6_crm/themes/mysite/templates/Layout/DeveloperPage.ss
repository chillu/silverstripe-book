<div class="typography">
		<div id="Content">
			
		<h2>$Title</h2>
	
		$Content
		
		$Form
		
		<% if Developers %>	
		<h3>Entwickler</h3>
		<ul class="developers">
		<% control Developers %>	
			<li>
				<a href="$Link">$FirstName $Surname</a>
			</li>
		<% end_control %>
		</ul>
		<% end_if %>
		</div>
</div>

	
	


