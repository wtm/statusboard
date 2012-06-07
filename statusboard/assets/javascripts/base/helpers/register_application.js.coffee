window.register_application = (application) ->
	if Statusboard.State.debug
		console.log "Registering application: #{application.Meta.ApplicationName}"

	app = new Statusboard.Models.Application application
	Statusboard.Collections.applications.add app

	# Setup for auto-unbind magic--see `Backbone.Views.bindTo` /
	# `Backbone.Views.clean_up` mixins.
	application.State.bindings = []
