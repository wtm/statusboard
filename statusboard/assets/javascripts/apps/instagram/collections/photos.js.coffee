jQuery ($) ->
	class Instagram.Collections.Photos extends Backbone.Collection
		model: Instagram.Models.Photo
		url: "https://api.instagram.com/v1/tags/#{Instagram.State.tag_name}/media/recent?client_id=#{Instagram.State.api_key}"
		parse: (data) -> data.data

	Instagram.Collections.photos = new Instagram.Collections.Photos()
