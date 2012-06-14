Handlebars?.registerHelper "highlight_hashtag", (item, options) ->
	new Handlebars.SafeString item.replace("#wtmisfive", "<span class='hashtag'>#wtmisfive</span>")
