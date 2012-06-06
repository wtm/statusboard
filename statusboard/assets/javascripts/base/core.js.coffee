#= require ./boot
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./helpers
#= require_tree ./views
#= require_tree ./routers

window.Statusboard =
	Collections: {}
	Models: {}
	Views: {}
	Routers: {}
	State: {}
	Meta:
		ApplicationName: "Statusboard"
		AuthorName: "Jordan Cole"
		AuthorURL: "http://ratafia.info"
		IconPath: ""
		Platforms:
			Mobile: false
			Desktop: true
		Type: "application"
		Version: 1.0
