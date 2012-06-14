Zepto ($) ->
	class Statusboard.Collections.Items extends Backbone.Collection
		add: (models, options) ->
			modelsToAdd = []

			# If a single model is passed in, convert it to an array so we can use
			# the same logic for both cases below.
			models = [models] unless _.isArray(models)

			_filter = (model) ->
				console.log @get(model.id), model.id

				@get model.id
			modelsToAdd = _.reject models, _filter, @

			console.log "adding", modelsToAdd

			Backbone.Collection.prototype.add.call @, modelsToAdd, options

	Statusboard.Collections.items = new Statusboard.Collections.Items()
