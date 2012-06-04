jQuery ($) ->
	class Clock.Views.Date extends Backbone.View
		tagName: "section"
		className: "date"
		template: Handlebars.templates["apps/clock/date"]

		initialize: -> _.bindAll @, "render"

		render: ->
			@$el.html @template {}

			@
