jQuery ($) ->
	# office: 45.518902,-122.664596
	# beryl: 31.5,-82.9
	location = "45.518902,-122.664596"

	class DarkSky.Collections.Predictions extends Backbone.Collection
		model: DarkSky.Models.Prediction
		url: "https://api.darkskyapp.com/v1/forecast/#{Statusboard.dark_sky_api_key}/#{location}"

	DarkSky.Collections.predictions = new DarkSky.Collections.Predictions()
