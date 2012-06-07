jQuery ($) ->
	class Weather.Views.DarkSkyForecast extends Backbone.UnbindingView
		tagName: "section"
		template: Handlebars.templates["apps/weather/dark_sky_forecast"]

		initialize: ->
			_.bindAll @, "render"

			@bindings = Weather.State.bindings
			@bindTo @collection, "reset", @render

		render: ->
			@$el.html @template @model.toJSON()

			@
