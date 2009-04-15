<ul>
 	<% control Menu(1) %>	  
  		<li><a href="$Link" title="$Title.XML" class="$LinkingMode"><span>$MenuTitle</span></a></li>
   	<% end_control %>
	<% if CurrentMember %>
		<li><a href="Security/logout" title="Ausloggen">Logout</a></li>
	<% else %>
		<li><a href="Security/login" title="Einloggen">Login</a></li>
	<% end_if %>
 </ul>