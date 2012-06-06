jQuery ($) ->
	# Rate limit of 5000 requests per hour per `client_id`, or one request per
	# 1.3 seconds. A delay of ten seconds means thirteen users can have the
	# statusboard open simultaneously.
	#
	# See: http://instagr.am/developer/endpoints/#limits
	Instagram.State.autorefresh_delay = seconds_to_ms 10

	Instagram.State.tag_name = "wtm"

	app = new Statusboard.Models.Application Instagram
	Statusboard.Collections.applications.add app
