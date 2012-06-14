Zepto ($) ->
	class Foursquare.Collections.Items extends Backbone.Subset
		parent: -> Statusboard.Collections.items
		sieve: (item) -> item.get("statusboard_type") is "foursquare"

		url: ->
			now = new Date()
			y = now.getFullYear()
			m = now.getMonth()
			m = "0#{m}" if m < 10
			d = now.getDate()
			d = "0#{m}" if d < 10
			api_v = "#{y}#{m}#{d}"

			"https://api.foursquare.com/v2/venues/4aa7fa57f964a5206b4e20e3/herenow?oauth_token=#{Foursquare.State.api_key}&v=#{api_v}"
		parse: (data) ->
			checkins = data.response.hereNow.items
			for checkin in checkins
				console.log "!", checkin
				# fetch
				checkin.photo = 

				item.statusboard_type = "foursquare"

			checkins

		add: (models, options) ->
			models = [models] unless _.isArray(models)
			@parent().add.call @, models, options

	Foursquare.Collections.items = new Foursquare.Collections.Items()
