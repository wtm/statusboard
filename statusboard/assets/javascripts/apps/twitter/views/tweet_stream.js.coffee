jQuery ($) ->
	class Twitter.Views.TweetStream extends Backbone.UnbindingView
		initialize: ->
			_.bindAll @, "render"

			@bindings = Instagram.State.bindings
			@bindTo @collection, "reset", @render
			@child_views = []

		render: ->
			collection = @collection
			child_views = @child_views

			$view = $("#stream")

			collection.each (item) ->
				tweet = new Twitter.Views.Tweet
					collection: collection
					model: item

				$view.append tweet.render().el
				child_views.push tweet

			@
