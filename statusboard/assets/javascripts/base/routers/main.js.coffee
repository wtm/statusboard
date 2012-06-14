Zepto ($) ->
	class Statusboard.Routers.Main extends Backbone.Router
		routes:
			"": "index"

		index: ->
			Statusboard.Collections.applications.each (item) ->
				app = item.toJSON()

				app.Collections.items.fetch
					dataType: "jsonp"

			wrapper = new Statusboard.Views.Main
				collection: Statusboard.Collections.items

			$(document.body).append wrapper.render().el

	window.StatusboardApp = new Statusboard.Routers.Main()
