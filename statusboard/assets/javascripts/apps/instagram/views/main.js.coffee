jQuery ($) ->
	class Instagram.Views.Main extends Backbone.UnbindingView
		tagName: "section"
		className: "app instagram"

		initialize: ->
			_.bindAll @, "render"

			@bindings = []
			@child_views = []

			clearTimeout Instagram.State.autorefresh

		render: ->
			@cleanUp()

			collection = Instagram.Collections.photos
			collection.fetch
				cache: false
				dataType: "jsonp"

			stream = new Instagram.Views.PhotoStream
				collection: collection
			@$el.append stream.render().el
			@child_views.push stream

			@
