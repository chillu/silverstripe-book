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
					<a href="$URL">$Title</a>&nbsp;
					<a href="referenzen/Reference/$ID/edit">
						(editieren)
					</a>
				</li>
			<% end_control %>
			</ul>
			<% else %>
				<p class="message">Keine Referenzen gefunden</p>
			<% end_if %>
			
		<% end_control %>
		
		<p>
			<a href="referenzen/Reference/add">
				Referenz hinzufügen
			</a>
		</p>
	
		</div>
</div>