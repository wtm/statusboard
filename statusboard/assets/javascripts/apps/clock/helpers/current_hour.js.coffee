Handlebars?.registerHelper "current_hour", (options) ->
	hour = new Date().getHours()

	if hour < 10 then "0#{hour}" else hour
