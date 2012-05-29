jQuery ($) ->
	class Statusboard.Routers.Main extends Backbone.Router
		routes:
			"": "index"

		index: ->
			# Dark Sky
			darksky_data = DarkSky.Collections.predictions
			darksky = new DarkSky.Views.Main
				collection: darksky_data

			darksky_data.fetch
				cache: false
				dataType: "jsonp"

			darksky.render()
			$darksky = $(darksky.el)
			$(document.body).append $darksky

	window.StatusboardApp = new Statusboard.Routers.Main()
