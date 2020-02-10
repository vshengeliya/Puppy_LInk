Rails.application.routes.draw do

get '/breeders/login', to: 'session#new'
post '/breeders/sessions', to: 'session#create'
delete '/breeders/logout', to: 'session#destroy'

resources :centers
resources :pets
resources :breeders, only: [:index,:show,:edit,:update,:new,:create]
resources :users


get '/adopted', to: 'pets#adopted', as: 'adopted'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
