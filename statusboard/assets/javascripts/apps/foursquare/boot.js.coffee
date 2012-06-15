Zepto ($) ->
	# Rate limit of 500 requests per endpoint per hour, or one every 7.5 seconds.
	#
	# See: https://developer.foursquare.com/overview/ratelimits
	if window.location.host is "wtmisfive-stream.herokuapp.com" or "localhost:9001"
		delay = seconds_to_ms 10
	else
		delay = seconds_to_ms 45
	Foursquare.State.autorefresh_delay = delay

	Foursquare.State.tag_name = "wtmisfive"
	Foursquare.State.venue_id = "4aa7fa57f964a5206b4e20e3"

	register_application Foursquare
