Handlebars?.registerHelper "current_minute", (options) ->
	minutes = new Date().getMinutes()

	if minutes < 10 then "0#{minutes}" else minutes
