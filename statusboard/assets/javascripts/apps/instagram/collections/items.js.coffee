Zepto ($) ->
	class Instagram.Collections.Items extends Backbone.Subset
		parent: -> Statusboard.Collections.items
		sieve: (item) -> item.get("statusboard_type") is "instagram"

		url: ->
			"https://api.instagram.com/v1/tags/#{Instagram.State.tag_name}/media/recent?client_id=#{Instagram.State.api_key}"
		parse: (data) ->
			items = data.data
			for item in items
				item.statusboard_type = "instagram"

			items

		add: (models, options) ->
			models = [models] unless _.isArray(models)
			@parent().add.call @, models, options

	Instagram.Collections.items = new Instagram.Collections.Items()
