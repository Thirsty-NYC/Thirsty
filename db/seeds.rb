Bar.delete_all
Special.delete_all
i = 1
while i < 12
	page = Nokogiri::HTML(HTTParty.get("http://www.nyhappyhours.com/index.phtml?page=#{i}"))

	if page.css('span.bold a')

		links = page.css('span.bold a')   

		links.each do | link |
			partial_url = link.attributes["href"].value
			url = "http://www.nyhappyhours.com/#{partial_url}"
			bar_url = Nokogiri::HTML(HTTParty.get("#{url}"))
			bar_name = bar_url.css("span.fontdarkblue")[0].children[0].text  
			neighborhood = bar_url.css("td.bglightgrey")[0].text.split("(")[1].split(")")[0]
			address = bar_url.css('div.fontmedium')[0].text.split('Address:')[1].split('(')[0] 
			phone_number = '(' + bar_url.css('div.fontmedium')[0].text.split('Address:')[1].split('(')[1].split("\n")[0]
			
			if bar_url.css('div.fontmedium')[0].text.split('Address:')[1].split('(')[2] != nil
				website = bar_url.css('div.fontmedium')[0].text.split('Address:')[1].split('(')[2].split('Website: ')[1]
			end 

			array_sunday = bar_url.css("table")[3].text.split("Happy Hour Specials*:")[1].split("\n")[1].split("  ")
			sunday = array_sunday[0].split(":")[0]
			sunday_special = array_sunday[1]

			if array_sunday[2] != nil && array_sunday[2].split("").include?("(") && array_sunday[2].split("").include?(")")
				sunday_time = array_sunday[2].split("(")[1].split(")")[0]
			end 

			array_monday = bar_url.css("table")[3].text.split("Happy Hour Specials*:")[1].split("\n")[2].split("  ")
			monday = array_monday[0].split(":")[0]
			monday_special = array_monday[1]
			if array_monday[2] != nil && array_monday[2].split("").include?("(") && array_monday[2].split("").include?(")")
				monday_time = array_monday[2].split("(")[1].split(")")[0]
			end 
			
			array_tuesday = bar_url.css("table")[3].text.split("Happy Hour Specials*:")[1].split("\n")[3].split("  ")
			tuesday = array_tuesday[0].split(":")[0]
			tuesday_special = array_tuesday[1]
		# binding.pry
			if array_tuesday[2] != nil && array_tuesday[2].split("").include?("(") && array_tuesday[2].split("").include?(")")
				tuesday_time = array_tuesday[2].split("(")[1].split(")")[0]
			end 
			
			array_wednesday = bar_url.css("table")[3].text.split("Happy Hour Specials*:")[1].split("\n")[4].split("  ")
			wednesday = array_wednesday[0].split(":")[0]
			wednesday_special = array_wednesday[1]
			if array_wednesday[2] != nil && array_wednesday[2].split("").include?("(") && array_wednesday[2].split("").include?(")")
				wednesday_time = array_wednesday[2].split("(")[1].split(")")[0]
			end 
			
			array_thursday = bar_url.css("table")[3].text.split("Happy Hour Specials*:")[1].split("\n")[5].split("  ")
			thursday = array_thursday[0].split(":")[0]
			thursday_special = array_thursday[1]
			if array_thursday[2] != nil && array_thursday[2].split("").include?("(") && array_thursday[2].split("").include?(")")
				thursday_time = array_thursday[2].split("(")[1].split(")")[0]
			end 
			
			array_friday = bar_url.css("table")[3].text.split("Happy Hour Specials*:")[1].split("\n")[6].split("  ")
			friday = array_friday[0].split(":")[0]
			friday_special = array_friday[1]
			if array_friday[2] != nil && array_friday[2].split("").include?("(") && array_friday[2].split("").include?(")")
				friday_time = array_friday[2].split("(")[1].split(")")[0]
			end 
			
			array_saturday = bar_url.css("table")[3].text.split("Happy Hour Specials*:")[1].split("\n")[7].split("  ")
			saturday = array_saturday[0].split(":")[0]
			saturday_special = array_saturday[1]
			if array_saturday[2] != nil && array_saturday[2].split("").include?("(") && array_saturday[2].split("").include?(")")
				saturday_time = array_saturday[2].split("(")[1].split(")")[0]
			end 
			bar = Bar.new
			bar.name = bar_name
			bar.location = address
			bar.phone_number = phone_number
			bar.neighborhood = neighborhood 
			bar.url = website
			bar.save


			sundaySpecial = Special.new
			sundaySpecial.bar_id = bar.id
			sundaySpecial.day = "Sunday"
			sundaySpecial.info = sunday_special
			sundaySpecial.time = sunday_time
			sundaySpecial.save 

			mondaySpecial = Special.new
			mondaySpecial.bar_id = bar.id
			mondaySpecial.day = "Monday"
			mondaySpecial.info = monday_special
			mondaySpecial.time = monday_time
			mondaySpecial.save 

			tuesdaySpecial = Special.new
			tuesdaySpecial.bar_id = bar.id
			tuesdaySpecial.day = "Tuesday"
			tuesdaySpecial.info = tuesday_special
			tuesdaySpecial.time = tuesday_time
			tuesdaySpecial.save 

			wednesdaySpecial = Special.new
			wednesdaySpecial.bar_id = bar.id
			wednesdaySpecial.day = "Wednesday"
			wednesdaySpecial.info = wednesday_special
			wednesdaySpecial.time = wednesday_time
			wednesdaySpecial.save 

			thursdaySpecial = Special.new
			thursdaySpecial.bar_id = bar.id
			thursdaySpecial.day = "Thursday"
			thursdaySpecial.info = thursday_special
			thursdaySpecial.time = thursday_time
			thursdaySpecial.save 

			fridaySpecial = Special.new
			fridaySpecial.bar_id = bar.id
			fridaySpecial.day = "Friday"
			fridaySpecial.info = friday_special
			fridaySpecial.time = friday_time
			fridaySpecial.save 

			saturdaySpecial = Special.new
			saturdaySpecial.bar_id = bar.id
			saturdaySpecial.day = "Saturday"
			saturdaySpecial.info = saturday_special
			saturdaySpecial.time = saturday_time
			saturdaySpecial.save 
		end 
	end
	puts i
	i += 1
end


