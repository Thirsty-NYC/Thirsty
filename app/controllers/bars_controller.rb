class BarsController < ApplicationController

	def index
		@bars = Bar.all
		render :index
	end 
	
	def show
		@bar = Bar.find_by(id: params[:id])
		@specials = @bar.specials
		@comments = @bar.comments
	end

# must be signed in to add/change bar info?
	def create
	end 


	def update
	end 


# 	Prefix Verb   URI Pattern           	 Controller#Action
#     bars GET    /bars(.:format)          bars#index
#          POST   /bars(.:format)          bars#create
#  new_bar GET    /bars/new(.:format)      bars#new
# edit_bar GET    /bars/:id/edit(.:format) bars#edit
#      bar GET    /bars/:id(.:format)      bars#show
#          PATCH  /bars/:id(.:format)      bars#update
#          PUT    /bars/:id(.:format)      bars#update
#          DELETE /bars/:id(.:format)      bars#destroy
end