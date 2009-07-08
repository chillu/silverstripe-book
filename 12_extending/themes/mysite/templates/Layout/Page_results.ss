<div class="typography">
	<div id="Content">
		<h2>$Title</h2>
		<p class="searchQueryTitle">
			You searched for
			&quot;{$SearchQueryTitle}&quot;
		</p>			 
		<% if Results %>
		 <ul class="searchResults">
			<% control Results %>
			  <li class="searchResult">
				 <a class="searchResultHeader" href="$Link">
					$Title
				 </a>
				 <div>$Content.LimitWordCountXML</div>
				 <a href="$Link">read more ...</a>
			  </li>
			<% end_control %>
		 </ul>
			<% if Results.MoreThanOnePage %>
				<div id="PageNumbers">
					<% if Results.NotLastPage %>
						<a class="next" href="$Results.NextLink">
							Next page
						</a>
					<% end_if %>
					<% if Results.NotFirstPage %>
						<a class="prev" href="$Results.PrevLink">
							Previous page
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
					<p>Page $Results.CurrentPage of $Results.TotalPages</p>
				</div>
			<% end_if %>
		<% else %>
			<p>No search results found!</p>
		<% end_if %>					 
	</div>
</div>