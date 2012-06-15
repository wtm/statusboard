Zepto ($) ->
	# Rate limit of 500 requests per endpoint per hour, or one every 7.5 seconds.
	#
	# See: https://developer.foursquare.com/overview/ratelimits
	Foursquare.State.autorefresh_delay = seconds_to_ms 10

	Foursquare.State.tag_name = "wtmisfive"
	Foursquare.State.venue_id = "4aa7fa57f964a5206b4e20e3"

	register_application Foursquare
