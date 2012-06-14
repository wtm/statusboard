Zepto ($) ->
	# Rate limit of 5000 requests per hour per `client_id`, or one request per
	# 1.3 seconds. A delay of ten seconds means thirteen users can have the
	# statusboard open simultaneously.
	#
	# See: http://instagr.am/developer/endpoints/#limits
	Foursquare.State.autorefresh_delay = seconds_to_ms 2

	Foursquare.State.tag_name = "wtmisfive"

	register_application Foursquare
