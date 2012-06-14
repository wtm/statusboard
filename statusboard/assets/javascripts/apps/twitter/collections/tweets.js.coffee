jQuery ($) ->
	class Twitter.Collections.Tweets extends Backbone.Collection
		model: Twitter.Models.Tweet
		url: ->
			if Twitter.State.list_id
				"https://api.twitter.com/1/lists/statuses.json?list_id=#{Twitter.State.list_id}&include_entities=1"
			else if Twitter.State.term
				"http://search.twitter.com/search.json?q=#{Twitter.State.term}&include_entities=1"

		parse: (data) ->
			if Twitter.State.list_id
				data
			else if Twitter.State.term
				data.results

	Twitter.Collections.tweets = new Twitter.Collections.Tweets()
