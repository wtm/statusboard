jQuery ($) ->
	class Instagram.Views.PhotoStream extends Backbone.View
		tagName: "section"
		className: "photo_stream"

		initialize: ->
			_.bindAll @, "render"

			@collection.bind "reset", @render

		render: ->
			collection = @collection

			@$el.children().empty().remove()
			$view = @$el

			collection.each (item) ->
				tweet = new Instagram.Views.Photo
					collection: collection
					model: item

				$view.append tweet.render().el

			@
