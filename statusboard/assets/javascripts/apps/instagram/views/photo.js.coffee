jQuery ($) ->
	class Instagram.Views.Photo extends Backbone.View
		tagName: "section"
		className: "item"
		template: Handlebars.templates["apps/instagram/photo"]

		initialize: ->
			_.bindAll @, "render"

			@collection.on "reset", @render

		render: ->
			@$el.html @template @model.toJSON()

			@
