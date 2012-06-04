jQuery ($) ->
	class Twitter.Collections.Tweets extends Backbone.Collection
		model: Twitter.Models.Tweet
		url: "https://api.twitter.com/1/lists/statuses.json?list_id=#{Twitter.State.list_id}&include_entities=1"

	Twitter.Collections.tweets = new Twitter.Collections.Tweets()
