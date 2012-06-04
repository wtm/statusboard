jQuery ($) ->
	class Clock.Views.Main extends Backbone.View
		tagName: "section"
		className: "app clock"

		initialize: ->
			_.bindAll @, "render"

			clearTimeout Clock.State.update_time

		render: ->
			@$el.children().empty().remove()

			time = new Clock.Views.Time
			@$el.append time.render().el

			date = new Clock.Views.Date
			@$el.append date.render().el

			@
