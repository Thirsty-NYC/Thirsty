class NeighborhoodsController < ApplicationController
	
	def index 
	end

	def show
		neighborhood = Neighborhood.find_by(id: params["id"]).name
		bars = Bar.where(neighborhood: neighborhood)
		array = []
		
		bars.each do |bar|
			hash = {}
			specials = Special.where(bar_id: bar.id)
			specials.each do |special|
				hash[special.day] = [special.info, special.time]
			end 
			array << hash
		end 

		array2 = []
		array2 << bars
		array2 << array

		render :json => array2


	end 
end 