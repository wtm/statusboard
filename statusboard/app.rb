class StatusboardApp < Sinatra::Base
	register Sinatra::Synchrony
	register Sinatra::StaticAssets

	# http://stackoverflow.com/a/4525933/672403
	configure do
		set :apps, ["base", "apps/clock", "apps/instagram", "apps/twitter",
				"apps/weather"]

		%w(dark_sky_api_key instagram_api_key wunderground_api_key).each do |setting|
			set setting.to_sym, (ENV[setting.upcase] || "")
		end
	end

	get "/" do
		erb "", :layout_engine => :haml
	end
end
