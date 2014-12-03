class NeighborhoodsController < ApplicationController
	def index 


	end 


	def show
		neighborhood = Neighborhoods.find_by(params[:id]).name
		bars = Bar.where(neighborhood: neighborhood)
		render :json => bars
	end 
end 