<div class="newMembersWidget">
<% if Members %>
	<ul class="members">
	<% control Members %>
		<li>
			<% if Link %>
				<a href="$Link">$Title</a>
			<% else %>
				$Title
			<% end_if %>
		</li>
	<% end_control %>
	</ul>
<% end_if %>
</div>