Zepto ($) ->
	class Foursquare.Models.Checkin extends Backbone.Model
		url: -> "https://api.foursquare.com/v2/checkins/#{@get "id"}?oauth_token=#{Foursquare.State.api_key}"
