class StatusboardApp < Sinatra::Base
	register Sinatra::Synchrony
	register Sinatra::StaticAssets

	# http://stackoverflow.com/a/4525933/672403
	configure do
		set :apps, ["base", "apps/instagram", "apps/twitter", "apps/foursquare", "apps/facebook"]

		%w(instagram_api_key foursquare_api_key facebook_api_key).each do |setting|
			set setting.to_sym, (ENV[setting.upcase] || "")
		end
	end

	get "/" do
		erb "", :layout_engine => :haml
	end
end
