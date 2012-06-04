jQuery ($) ->
	class Statusboard.Routers.Main extends Backbone.Router
		routes:
			"": "index"

		index: ->
			# Weather
			weather = new Weather.Views.Main

			weather.render()
			$weather = $(weather.el)
			$(document.body).append $weather

	window.StatusboardApp = new Statusboard.Routers.Main()
