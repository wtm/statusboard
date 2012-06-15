Zepto ($) ->
	class Twitter.Collections.Items extends Backbone.Subset
		parent: -> Statusboard.Collections.items
		sieve: (item) -> item.get("statusboard_type") is "twitter"

		url: ->
			"http://search.twitter.com/search.json?q=#{Twitter.State.term}&include_entities=1&since_id=#{Twitter.State.last_id}"

		parse: (data) ->
			Twitter.State.last_id = data.max_id

			items = data.results
			for item in items
				item.statusboard_type = "twitter"

				# Add fake media entity for @WTMPhotoBooth tweets.
				if item.from_user is 'WTMPhotoBooth'
					if url = item.entities?.urls?[0]?.expanded_url
						item.entities.media or= []
						item.entities.media.unshift
							media_url: url

			items

		add: (models, options) ->
			models = [models] unless _.isArray(models)
			@parent().add.call @, models, options

	Twitter.Collections.items = new Twitter.Collections.Items()
