class StatusboardApp < Sinatra::Base
	register Sinatra::Synchrony
	register Sinatra::StaticAssets

	# http://stackoverflow.com/a/4525933/672403
	configure do
		set :apps, ["base", "apps/instagram", "apps/twitter"]

		%w(instagram_api_key).each do |setting|
			set setting.to_sym, (ENV[setting.upcase] || "")
		end
	end

	get "/" do
		erb "", :layout_engine => :haml
	end
end
