Handlebars?.registerHelper "currentTime", (items, options) ->
	now = new Date()

	"#{now.getHours()}:#{now.getMinutes()}"
