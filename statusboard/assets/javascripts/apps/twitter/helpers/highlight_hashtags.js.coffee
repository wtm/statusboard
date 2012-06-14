Handlebars?.registerHelper "highlight_hashtags", (item, options) ->
	new Handlebars.SafeString item.replace(/(\#[\w_]+)/, "<em>$1</em>")
