jQuery ($) ->
	class Weather.Views.Wunderground extends Backbone.UnbindingView
		tagName: "section"
		id: "wunderground"

		initialize: ->
			_.bindAll @, "render"

			@bindings = Weather.State.bindings
			@bindTo @collection, "reset", @render
			@child_views = []

		render: ->
			collection = @collection
			child_views = @child_views

			@$el.children().empty().remove()
			$view = @$el

			collection.each (item) ->
				forecast = new Weather.Views.WundergroundForecast
					collection: collection
					model: item

				$view.append forecast.render().el
				child_views.push forecast

			@
