Rails.application.routes.draw do
root "bars#index"
  resources :bars
  resources :neighborhoods


#        Prefix Verb   URI Pattern                       Controller#Action
#          root GET    /                                 bars#index
#          bars GET    /bars(.:format)                   bars#index
#               POST   /bars(.:format)                   bars#create
#       new_bar GET    /bars/new(.:format)               bars#new
#      edit_bar GET    /bars/:id/edit(.:format)          bars#edit
#           bar GET    /bars/:id(.:format)               bars#show
#               PATCH  /bars/:id(.:format)               bars#update
#               PUT    /bars/:id(.:format)               bars#update
#               DELETE /bars/:id(.:format)               bars#destroy
# neighborhoods GET    /neighborhoods(.:format)          neighborhoods#index
#               POST   /neighborhoods(.:format)          neighborhoods#create
# new_neighborhood GET    /neighborhoods/new(.:format)      neighborhoods#new
# edit_neighborhood GET    /neighborhoods/:id/edit(.:format) neighborhoods#edit
#  neighborhood GET    /neighborhoods/:id(.:format)      neighborhoods#show
#               PATCH  /neighborhoods/:id(.:format)      neighborhoods#update
#               PUT    /neighborhoods/:id(.:format)      neighborhoods#update
#               DELETE /neighborhoods/:id(.:format)      neighborhoods#destroy
end
