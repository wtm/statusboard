jQuery ($) ->
	class Clock.Views.Main extends Backbone.View
		tagName: "section"
		className: "app clock"

		initialize: ->
			_.bindAll @, "render"

			clearTimeout Clock.State.update_time

		render: ->
			@$el.children().empty().remove
			$view = @$el

			time = new Clock.Views.Time

			Clock.State.update_time = setInterval ->
				$view.append time.render().el
			, 1000

			@
