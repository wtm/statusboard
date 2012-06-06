jQuery ($) ->
	class Instagram.Views.Main extends Backbone.View
		tagName: "section"
		className: "app instagram"

		initialize: ->
			_.bindAll @, "render"

			clearTimeout Instagram.State.autofetch

		render: ->
			@$el.children().empty().remove()

			collection = Instagram.Collections.photos
			collection.fetch
				cache: false
				dataType: "jsonp"

			stream = new Instagram.Views.PhotoStream
				collection: collection

			@$el.append stream.render().el

			@
