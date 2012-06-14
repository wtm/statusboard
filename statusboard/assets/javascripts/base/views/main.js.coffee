jQuery ($) ->
	class Statusboard.Views.Main extends Backbone.UnbindingView
		tagName: "section"
		id: "wrapper"
		template: Handlebars.templates["base/stream"]

		initialize: ->
			_.bindAll @, "render"

			@bindings = Statusboard.State.bindings
			@bindTo @collection, "reset", @render
			@child_views = []

		render: ->
			@$el.html @template {}

			child_views = @child_views

			$view = @$el

			@collection.each (item) ->
				app = item.toJSON()

				app_view = new app.Views.Main
				app_view.render()
				child_views.push app_view

				# if app.State.autorefresh_delay
				# 	app.State.autorefresh = setInterval app_view.render,
				# 			app.State.autorefresh_delay

			@
