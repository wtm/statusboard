Zepto ($) ->
	original_sync = Backbone.sync

	Backbone.sync = (method, model, options) ->
		options.cache = false
		original_sync.apply Backbone, [method, model, options]
