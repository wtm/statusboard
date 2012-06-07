jQuery ($) ->
	class Instagram.Views.PhotoStream extends Backbone.UnbindingView
		tagName: "section"
		className: "photo_stream"

		initialize: ->
			_.bindAll @, "render"

			@bindings = Instagram.State.bindings
			@bindTo @collection, "reset", @render
			@child_views = []

		render: ->
			collection = @collection
			child_views = @child_views

			@$el.children().empty().remove()
			$view = @$el

			collection.each (item) ->
				tweet = new Instagram.Views.Photo
					collection: collection
					model: item

				$view.append tweet.render().el
				child_views.push tweet

			@
