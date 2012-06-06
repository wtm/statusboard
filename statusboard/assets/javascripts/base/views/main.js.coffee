jQuery ($) ->
	class Statusboard.Views.Main extends Backbone.View
		tagName: "section"
		id: "wrapper"

		initialize: ->
			_.bindAll @, "render"

			@collection.on "reset", @render

		render: ->
			@$el.children().empty().remove()

			$view = @$el

			@collection.each (item) ->
				app = item.toJSON()

				app_view = new app.Views.Main
				$view.append app_view.render().el

				if app.State.autorefresh_delay
					app.State.autorefresh = setInterval app_view.render,
							app.State.autorefresh_delay

			@
