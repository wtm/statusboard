jQuery ($) ->
	# office
	Weather.State.location = "45.518902,-122.664596"

	app = new Statusboard.Models.Application Weather
	Statusboard.Collections.applications.add app
