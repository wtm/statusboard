jQuery ($) ->
	class Twitter.Views.Main extends Backbone.View
		tagName: "section"
		className: "app twitter"

		initialize: ->
			_.bindAll @, "render"

			clearTimeout Twitter.State.autofetch

		render: ->
			@$el.children().empty().remove()

			collection = Twitter.Collections.tweets
			collection.fetch
				cache: false
				dataType: "jsonp"

			tweet_stream = new Twitter.Views.TweetStream
				collection: collection

			@$el.append tweet_stream.render().el

			@
