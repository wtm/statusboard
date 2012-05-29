# Load gems
require "rubygems"
require "bundler"
Bundler.require :statusboard_app

# Load app
require File.expand_path(File.join(File.dirname(__FILE__), "statusboard", "app.rb"))

map "/assets" do
	environment = Sprockets::Environment.new

	environment.append_path "statusboard/assets/images"
	environment.append_path "statusboard/assets/javascripts"
	environment.append_path "statusboard/assets/stylesheets"
	environment.append_path "statusboard/assets/templates"

	environment.append_path "vendor/assets/images"
	environment.append_path "vendor/assets/javascripts"
	environment.append_path "vendor/assets/stylesheets"

	Sprockets::Helpers.configure do |config|
		config.environment = environment
		config.prefix = "/assets"
		config.digest = false
	end

	run environment
end

map "/" do
	run StatusboardApp
end
