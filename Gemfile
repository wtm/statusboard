source :rubygems

gem "rake"
gem "thin"

group :statusboard_app do
	# server
	gem "sinatra", :require => "sinatra/base"
	gem "sinatra-synchrony", :require => "sinatra/synchrony"
	gem "sinatra-static-assets", :require => "sinatra/static_assets"

	gem "foursquare2"

	# content types
	gem "sprockets"
	gem "coffee-script"
	# `:coffeescript` HAML filter
	gem "coffee-filter"
	gem "sprockets-helpers", "~> 0.2"
	gem "sprockets-sass", "~> 0.5"
	gem "sass"

	# Handlebars + HAML, as templates
	gem "hamlbars"
end
