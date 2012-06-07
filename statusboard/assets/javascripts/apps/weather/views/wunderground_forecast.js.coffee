jQuery ($) ->
	class Weather.Views.WundergroundForecast extends Backbone.UnbindingView
		tagName: "section"
		className: "item"
		template: Handlebars.templates["apps/weather/wunderground_forecast"]

		initialize: ->
			_.bindAll @, "render"

			@bindings = Weather.State.bindings
			@bindTo @collection, "reset", @render

		render: ->
			@$el.html @template @model.toJSON()

			@
