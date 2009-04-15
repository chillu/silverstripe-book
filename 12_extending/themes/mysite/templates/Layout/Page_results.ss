<div class="typography">
	<div id="Content">
		<h2>$Title</h2>
		<p class="searchQueryTitle">
			Sie haben nach 
			&quot;{$SearchQueryTitle}&quot;
			gesucht
		</p>			 
		<% if Results %>
		 <ul class="searchResults">
			<% control Results %>
			  <li class="searchResult">
				 <a class="searchResultHeader" href="$Link">
					$Title
				 </a>
				 <div>$Content.LimitWordCountXML</div>
				 <a href="$Link">weiterlesen ...</a>
			  </li>
			<% end_control %>
		 </ul>
			<% if Results.MoreThanOnePage %>
				<div id="PageNumbers">
					<% if Results.NotLastPage %>
						<a class="next" href="$Results.NextLink">
							N&auml;chste Seite
						</a>
					<% end_if %>
					<% if Results.NotFirstPage %>
						<a class="prev" href="$Results.PrevLink">
							Vorherige Seite
						</a>
					<% end_if %>
					<span>
					<% control Results.Pages %>
						<% if CurrentBool %>
							$PageNum
						<% else %>
							<a href="$Link">$PageNum</a>
						<% end_if %>
					<% end_control %>
					</span>
					<p>Seite $Results.CurrentPage von $Results.TotalPages</p>
				</div>
			<% end_if %>
		<% else %>
			<p>Leider wurden keine Ergebnisse gefunden!</p>
		<% end_if %>					 
	</div>
</div>