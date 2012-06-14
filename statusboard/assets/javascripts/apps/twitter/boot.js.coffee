Zepto ($) ->
	# Rate limit of 150 non-authenticated requests per hour per IP, or one every
	# 24 seconds. 3 minutes gives a buffer of 30 requests.
	#
	# See: https://dev.twitter.com/docs/rate-limiting
	Twitter.State.autorefresh_delay = seconds_to_ms 10

	Twitter.State.term = "%23wtmisfive"

	Twitter.State.last_id = 0

	register_application Twitter
