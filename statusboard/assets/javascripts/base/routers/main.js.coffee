jQuery ($) ->
	class Statusboard.Routers.Main extends Backbone.Router
		routes:
			"": "index"

		index: ->
			view = new Statusboard.Views.Main
				collection: Statusboard.Collections.applications

			$(document.body).append view.render().el

	window.StatusboardApp = new Statusboard.Routers.Main()
