jQuery ($) ->
	class Weather.Collections.WundergroundPredictions extends Backbone.Collection
		model: Weather.Models.WundergroundPrediction
		url: "//api.wunderground.com/api/#{Weather.State.wunderground_api_key}/hourly/q/#{Weather.State.location}.json"
		parse: (data) ->
			hours = data.hourly_forecast

			if hours?.length > 5 then hours[0..4] else hours

	Weather.Collections.wunderground_predictions = new Weather.Collections.WundergroundPredictions()
