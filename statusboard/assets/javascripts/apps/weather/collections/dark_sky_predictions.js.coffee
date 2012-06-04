jQuery ($) ->
	class Weather.Collections.DarkSkyPredictions extends Backbone.Collection
		model: Weather.Models.DarkSkyPrediction
		url: "https://api.darkskyapp.com/v1/forecast/#{Weather.State.dark_sky_api_key}/#{Weather.State.location}"

	Weather.Collections.dark_sky_predictions = new Weather.Collections.DarkSkyPredictions()
