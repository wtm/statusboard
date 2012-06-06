jQuery ($) ->
	Clock.State.autorefresh_delay = seconds_to_ms 1

	app = new Statusboard.Models.Application Clock
	Statusboard.Collections.applications.add app
