jQuery ($) ->
	# Rate limit of 150 non-authenticated requests per hour per IP, or one every
	# 2.5 minutes. Going with 3 gives a buffer of 30 requests.
	#
	# See: https://dev.twitter.com/docs/rate-limiting
	Twitter.State.autorefresh_delay = minutes_to_ms 5

	# @opallabs/team
	Twitter.State.list_id = 54315769

	app = new Statusboard.Models.Application Twitter
	Statusboard.Collections.applications.add app
