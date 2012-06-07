jQuery ($) ->
	Statusboard.State.debug = false

	# Set up manually because the base app doesn't get it automatically from
	# `register_application`.
	Statusboard.State.bindings = []
