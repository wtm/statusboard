jQuery ($) ->
	class Clock.Views.Main extends Backbone.UnbindingView
		tagName: "section"
		className: "app clock"

		initialize: ->
			_.bindAll @, "render"

			@bindings = []
			@child_views = []

			clearTimeout Clock.State.autorefresh

		render: ->
			@cleanUp()

			time = new Clock.Views.Time
			@$el.append time.render().el
			@child_views.push time

			date = new Clock.Views.Date
			@$el.append date.render().el
			@child_views.push date

			@
