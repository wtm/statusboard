jQuery ($) ->
	class DarkSky.Views.Main extends Backbone.View
		tagName: "section"
		className: "app darksky"

		initialize: ->
			_.bindAll @, "render", "_draw_sparkline"

			@collection.bind "reset", @render

		_calculate_min_max: (items) ->
			_min = []
			_max = []

			_.each items, (item) ->
				_min.push (item.intensity - item.error)
				_max.push (item.intensity + item.error)

			[_min, _max]

		_draw_sparkline: (data, selector) ->
			_base_options =
				chartRangeMax: 75
				chartRangeMin: 0
				disableHighlight: true
				disableTooltips: true
				height: "100%"
				lineColor: false
				maxSpotColor: false
				minSpotColor: false
				spotColor: false
				type: "line"
				width: "100%"
			_max_options = $.extend {}, _base_options,
				fillColor: "rgba(68, 68, 68, 0.8)"
			_min_options = $.extend {}, _base_options,
				composite: true
				fillColor: "rgba(85, 85, 85, 0.8)"

			[_min, _max] = @_calculate_min_max data

			@$el.find(selector).sparkline _max, _max_options
			@$el.find(selector).sparkline _min, _min_options

		render: ->
			collection = @collection

			@$el.children().empty().remove
			$view = @$el

			_sparkline = @_draw_sparkline

			collection.each (item) ->
				forecast = new DarkSky.Views.Forecast
					collection: collection
					model: item

				$view.append forecast.render().el

				# Trying to render the sparkline in `DarkSky.Views.Forecast` fails
				# because the view hasn't been inserted yet.
				_sparkline item.get("hourPrecipitation"), ".forecast.next_hour"

			@
