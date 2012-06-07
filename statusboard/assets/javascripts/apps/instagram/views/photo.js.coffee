jQuery ($) ->
	class Instagram.Views.Photo extends Backbone.UnbindingView
		tagName: "section"
		className: "item"
		template: Handlebars.templates["apps/instagram/photo"]

		initialize: ->
			_.bindAll @, "render"

			@bindings = Instagram.State.bindings
			@bindTo @collection, "reset", @render

		render: ->
			@$el.html @template @model.toJSON()

			@
