jQuery ($) ->
	class Statusboard.Routers.Main extends Backbone.Router
		routes:
			"": "index"

		index: ->
			clock = new Clock.Views.Main
			$(document.body).append clock.render().el

			weather = new Weather.Views.Main
			$(document.body).append weather.render().el

	window.StatusboardApp = new Statusboard.Routers.Main()
