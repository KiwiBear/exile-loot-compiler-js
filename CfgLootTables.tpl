/*
Loot Groups
<% groups.forEach(function(group) { %><%= group %>
<% }) %>*/
class CfgLootTables {<% tables.forEach(function(group) { %>
	class <%= group.name %> {
		count = <%= group.count %>;
		half = <%= group.half %>;
		halfIndex = <%= group.halfIndex %>;
		sum = <%= group.sum %>;
		items[] = 
		{<% group.items.forEach(function(item, i) { %>
			{<%= item.chance %>, "<%= item.name %>"}<% if (i != group.items.length - 1) { %>,<% } %>// <%= item.percent %>%<% }) %> 
		};
	};<% }) %>
};