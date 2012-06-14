Zepto ($) ->
	class Statusboard.Views.Main extends Backbone.UnbindingView
		tagName: "section"
		id: "wrapper"
		template: Handlebars.templates["base/layout"]

		initialize: ->
			_.bindAll @, "render"

			@bindings = Statusboard.State.bindings
			@bindTo @collection, "reset", @render
			@child_views = []

			_fetch = (collection) ->
				collection.fetch
					add: true
					dataType: "jsonp"

			Statusboard.Collections.applications.each (item) ->
				app = item.toJSON()

				app.State.autorefresh = setInterval ->
					_fetch(app.Collections.items)
				, app.State.autorefresh_delay


		render: ->
			@$el.html @template {}

			stream = new Statusboard.Views.Stream
				collection: @collection
			@$el.append stream.render().el
			@child_views.push stream

			@
