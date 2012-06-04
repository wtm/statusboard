jQuery ($) ->
	class Twitter.Views.TweetStream extends Backbone.View
		tagName: "section"
		className: "tweet_stream"

		initialize: ->
			_.bindAll @, "render"

			@collection.bind "reset", @render

		render: ->
			collection = @collection

			@$el.children().empty().remove()
			$view = @$el

			collection.each (item) ->
				tweet = new Twitter.Views.Tweet
					collection: collection
					model: item

				$view.append tweet.render().el

			@
