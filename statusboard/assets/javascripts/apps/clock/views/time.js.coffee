jQuery ($) ->
	class Clock.Views.Time extends Backbone.View
		tagName: "section"
		className: "time"
		template: Handlebars.templates["apps/clock/time"]

		initialize: -> _.bindAll @, "render"

		render: ->
			@$el.html @template {}

			@
