jQuery ($) ->
	class Weather.Views.Wunderground extends Backbone.View
		tagName: "section"
		id: "wunderground"

		initialize: ->
			_.bindAll @, "render"

			@collection.bind "reset", @render

		render: ->
			collection = @collection

			@$el.children().empty().remove
			$view = @$el

			collection.each (item) ->
				forecast = new Weather.Views.WundergroundForecast
					collection: collection
					model: item

				$view.append forecast.render().el

			@
