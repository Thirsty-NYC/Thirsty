class NeighborhoodsController < ApplicationController
	def index 
	end
	def show
		neighborhood = Neighborhood.find_by(params["id"]).name
		bars = Bar.where(neighborhood: neighborhood)
		array = []
		
		bars.each do |bar|
			specials = Special.where(bar_id: bar.id)
			specials.each do |special|
				hash = {}
				hash[special.day] = [special.info, special.time]
				array << hash
			end 
		end 

		array2 = []
		array2 << bars
		array2 << array

		render :json => array2

	end 
end 