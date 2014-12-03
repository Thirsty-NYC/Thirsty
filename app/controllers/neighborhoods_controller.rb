class NeighborhoodsController < ApplicationController
	def index 


	end 


	def show
		binding.pry
		neighborhood = Neighborhood.find_by(params["id"]).name
		bars = Bar.where(neighborhood: neighborhood)
		render :json => bars
	end 
end 