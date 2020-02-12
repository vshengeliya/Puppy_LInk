Rails.application.routes.draw do

  root 'home#home'

  get '/users/login', to: 'session#new_user'
  post '/users/sessions', to: 'session#create_user'
  delete '/users/logout', to: 'session#destroy_user'

  get '/breeders/login', to: 'session#breeder_new'
  post '/breeders/sessions', to: 'session#breeder_create'
  delete '/breeders/logout', to: 'session#breeder_destroy'

  get '/pets/:id/adopted_new', to: 'pets#adopted_new', as: 'adopted_new'
  post '/pets/:id/adopted', to: 'pets#adopted', as: 'adopted'

resources :users
resources :pets
resources :breeders

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
