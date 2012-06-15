Zepto ($) ->
	# Rate limit of 5000 requests per hour per `client_id`, or one request per
	# 1.3 seconds. A delay of ten seconds means thirteen users can have the
	# statusboard open simultaneously.
	#
	# See: http://instagr.am/developer/endpoints/#limits
	if window.location.host is "wtmisfive-stream.herokuapp.com" or "localhost:9001"
		delay = seconds_to_ms 10
	else
		delay = seconds_to_ms 45
	Instagram.State.autorefresh_delay = delay

	Instagram.State.tag_name = "wtmisfive"

	register_application Instagram
