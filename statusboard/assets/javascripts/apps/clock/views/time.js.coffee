jQuery ($) ->
	class Clock.Views.Time extends Backbone.UnbindingView
		tagName: "section"
		className: "time"
		template: Handlebars.templates["apps/clock/time"]

		initialize: ->
			_.bindAll @, "render"

			@bindings = Clock.State.bindings

		render: ->
			@$el.html @template {}

			@
