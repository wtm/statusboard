jQuery ($) ->
	class Statusboard.Routers.Main extends Backbone.Router
		routes:
			"": "index"

		index: ->
			clock = new Clock.Views.Main
			$(document.body).append clock.render().el
			Clock.State.update_time = setInterval (-> clock.render()), 1000

			weather = new Weather.Views.Main
			$(document.body).append weather.render().el

	window.StatusboardApp = new Statusboard.Routers.Main()
