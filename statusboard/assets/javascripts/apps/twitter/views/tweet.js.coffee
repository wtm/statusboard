jQuery ($) ->
	class Twitter.Views.Tweet extends Backbone.UnbindingView
		tagName: "section"
		className: "item tweet"
		template: Handlebars.templates["apps/twitter/tweet"]

		initialize: ->
			_.bindAll @, "render"

			@bindings = Twitter.State.bindings
			@bindTo @collection, "reset", @render

		render: ->
			@$el.html @template @model.toJSON()

			@
