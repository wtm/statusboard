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

			twitter = new Twitter.Views.Main
			$(document.body).append twitter.render().el
			# 5 minutes
			Twitter.State.autofetch = setInterval (-> twitter.render()), 300000

			instagram = new Instagram.Views.Main
			$(document.body).append instagram.render().el
			# 5 minutes
			Instagram.State.autofetch = setInterval (-> twitter.render()), 300000

	window.StatusboardApp = new Statusboard.Routers.Main()
