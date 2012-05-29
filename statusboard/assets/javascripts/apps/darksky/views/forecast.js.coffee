jQuery ($) ->
	class DarkSky.Views.Forecast extends Backbone.View
		tagName: "section"
		template: Handlebars.templates["apps/darksky/forecast"]

		initialize: ->
			_.bindAll @, "render"

		render: ->
			@$el.html @template @model.toJSON()

			@
