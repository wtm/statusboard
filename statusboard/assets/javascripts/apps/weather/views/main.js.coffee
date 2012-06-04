jQuery ($) ->
	class Weather.Views.Main extends Backbone.View
		tagName: "section"
		className: "app weather"

		initialize: ->
			_.bindAll @, "render"

			clearTimeout Weather.State.dark_sky_autofetch

		render: ->
			@$el.children().empty().remove
			$view = @$el

			# Dark Sky
			dark_sky_data = Weather.Collections.dark_sky_predictions
			dark_sky_data.fetch
				cache: false
				dataType: "jsonp"

			Weather.State.dark_sky_autofetch = setInterval ->
				dark_sky_data.fetch
					cache: false
					dataType: "jsonp"
			, 30000

			dark_sky = new Weather.Views.DarkSky
				collection: dark_sky_data

			$view.append dark_sky.render().el

			# Weather Underground
			wunderground_data = Weather.Collections.wunderground_predictions
			wunderground_data.fetch
				cache: false
				dataType: "jsonp"

			wunderground = new Weather.Views.Wunderground
				collection: wunderground_data

			$view.append wunderground.render().el

			@
