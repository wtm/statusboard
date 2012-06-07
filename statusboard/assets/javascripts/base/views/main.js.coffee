jQuery ($) ->
	class Statusboard.Views.Main extends Backbone.UnbindingView
		tagName: "section"
		id: "wrapper"

		initialize: ->
			_.bindAll @, "render"

			@bindings = Statusboard.State.bindings
			@bindTo @collection, "reset", @render
			@child_views = []

		render: ->
			child_views = @child_views

			@$el.children().empty().remove()

			$view = @$el

			@collection.each (item) ->
				app = item.toJSON()

				app_view = new app.Views.Main
				$view.append app_view.render().el
				child_views.push app_view

				if app.State.autorefresh_delay
					app.State.autorefresh = setInterval app_view.render,
							app.State.autorefresh_delay

			@
