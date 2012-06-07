jQuery ($) ->
	class Twitter.Views.TweetStream extends Backbone.UnbindingView
		tagName: "section"
		className: "tweet_stream"

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
				tweet = new Twitter.Views.Tweet
					collection: collection
					model: item

				$view.append tweet.render().el
				child_views.push tweet

			@
