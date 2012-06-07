jQuery ($) ->
	class Twitter.Views.Main extends Backbone.UnbindingView
		tagName: "section"
		className: "app twitter"

		initialize: ->
			_.bindAll @, "render"

			@bindings = []
			@child_views = []

			clearTimeout Twitter.State.autorefresh

		render: ->
			@cleanUp()

			collection = Twitter.Collections.tweets
			collection.fetch
				cache: false
				dataType: "jsonp"

			tweet_stream = new Twitter.Views.TweetStream
				collection: collection
			@$el.append tweet_stream.render().el
			@child_views.push tweet_stream

			@
