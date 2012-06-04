Handlebars?.registerHelper "current_month", (options) ->
	month = new Date().getMonth()

	# TODO I18n
	switch month
		when 0 then "January"
		when 1 then "February"
		when 2 then "March"
		when 3 then "April"
		when 4 then "May"
		when 5 then "June"
		when 6 then "July"
		when 7 then "August"
		when 8 then "September"
		when 9 then "October"
		when 10 then "November"
		when 11 then "December"
