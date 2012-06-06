window.register_application = (application) ->
	if Statusboard.State.debug and console?.log?
		console.log "Registering application: #{application.Meta.ApplicationName}"

	app = new Statusboard.Models.Application application
	Statusboard.Collections.applications.add app
