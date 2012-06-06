jQuery ($) ->
	class Weather.Views.Main extends Backbone.View
		tagName: "section"
		className: "app weather"

		initialize: ->
			_.bindAll @, "render"

			clearTimeout Weather.State.autorefresh_darksky
			clearTimeout Weather.State.autorefresh_wunderground

		fetch_collection: (collection) ->
			collection.fetch
				cache: false
				dataType: "jsonp"

		render: ->
			@$el.children().empty().remove()
			$view = @$el

			fetch_collection = @fetch_collection

			# Dark Sky
			darksky_data = Weather.Collections.dark_sky_predictions
			dark_sky = new Weather.Views.DarkSky
				collection: darksky_data
			$view.append dark_sky.render().el

			fetch_collection darksky_data
			Weather.State.autorefresh_darksky =
					setInterval (-> fetch_collection darksky_data),
							Weather.State.darksky_autorefresh_delay

			# Weather Underground
			wunderground_data = Weather.Collections.wunderground_predictions
			wunderground = new Weather.Views.Wunderground
				collection: wunderground_data
			$view.append wunderground.render().el

			fetch_collection wunderground_data
			Weather.State.autorefresh_wunderground =
					setInterval (-> fetch_collection wunderground_data),
							Weather.State.wunderground_autorefresh_delay

			@
