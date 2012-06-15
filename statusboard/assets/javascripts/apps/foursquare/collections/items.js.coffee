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

			"https://api.foursquare.com/v2/venues/#{Foursquare.State.venue_id}/herenow?oauth_token=#{Foursquare.State.api_key}&v=#{api_v}"
		parse: (data) ->
			_items = @

			if data.meta.code is 403
				checkins = null
			else
				checkins = data.response.hereNow.items
				for checkin in checkins
					_checkin = new Foursquare.Models.Checkin
						id: checkin.id

					_checkin.fetch
						success: (response) ->
							data = response.toJSON()

							_real_checkin = _items.get checkin.id
							_real_checkin.set "photo_url", (data.response?.checkin?.photos?.items?[0].url or "")

					checkin.statusboard_type = "foursquare"

			checkins

		add: (models, options) ->
			models = [models] unless _.isArray(models)
			@parent().add.call @, models, options

	Foursquare.Collections.items = new Foursquare.Collections.Items()
