Zepto ($) ->
	class Facebook.Collections.Items extends Backbone.Subset
		parent: -> Statusboard.Collections.items
		sieve: (item) -> item.get("statusboard_type") is "facebook"

		url: ->
			"https://api.instagram.com/v1/tags/#{Facebook.State.tag_name}/media/recent?client_id=#{Facebook.State.api_key}"
		parse: (data) ->
			items = data.data
			for item in items
				item.statusboard_type = "facebook"

			items

		add: (models, options) ->
			models = [models] unless _.isArray(models)
			@parent().add.call @, models, options

	Facebook.Collections.items = new Facebook.Collections.Items()
