jQuery ($) ->
	class Clock.Views.Date extends Backbone.UnbindingView
		tagName: "section"
		className: "date"
		template: Handlebars.templates["apps/clock/date"]

		initialize: ->
			_.bindAll @, "render"

			@bindings = Clock.State.bindings

		render: ->
			@$el.html @template {}

			@
