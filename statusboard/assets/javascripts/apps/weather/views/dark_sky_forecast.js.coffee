jQuery ($) ->
	class Weather.Views.DarkSkyForecast extends Backbone.View
		tagName: "section"
		template: Handlebars.templates["apps/weather/dark_sky_forecast"]

		initialize: -> _.bindAll @, "render"

		render: ->
			@$el.html @template @model.toJSON()

			@
