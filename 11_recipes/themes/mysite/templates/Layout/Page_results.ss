<div class="typography">
	<div id="Content">
		<h2>$Title</h2>
		<p class="searchQueryTitle">
			You searched for:
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
				 <a href="$Link">more ...</a>
			  </li>
			<% end_control %>
		 </ul>
			<% if Results.MoreThanOnePage %>
				<div id="PageNumbers">
					<% if Results.NotFirstPage %>
						<a class="prev" href="$Results.PrevLink">
							&lt; Previous page
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
					<% if Results.NotLastPage %>
						<a class="next" href="$Results.NextLink">
							Next page &gt;
						</a>
					<% end_if %>
					<p>Page $Results.CurrentPage of $Results.TotalPages</p>
				</div>
			<% end_if %>
		<% else %>
			<p>No search results were found</p>
		<% end_if %>					 
	</div>
</div>