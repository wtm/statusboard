jQuery ($) ->
	# No app-wide `autorefresh_delay` because the services used have different
	# requirements:
	#
	# * Dark Sky has no stated rate limit.
	#
	# * Weather Underground's free developer plan allows 500 requests per day per
	#   API key, or one request every 2.88 minutes. Since the forecast is hourly,
	#   the data doesn't need to be updated very frequently. Updating every 30
	#   minutes allows ten simultaneous users.
	Weather.State.autorefresh_delay = false
	Weather.State.darksky_autorefresh_delay = minutes_to_ms 5
	Weather.State.wunderground_autorefresh_delay = minutes_to_ms 30

	# `String` in the form of `"latitude,longitude"`.
	Weather.State.location = "45.518902,-122.664596"

	app = new Statusboard.Models.Application Weather
	Statusboard.Collections.applications.add app
