Rails.application.routes.draw do
  root 'home#home'

  get '/users/login', to: 'session#new_user'
  post '/users/sessions', to: 'session#create_user'
  delete '/users/logout', to: 'session#destroy_user'

  get '/breeders/login', to: 'session#breeder_new'
  post '/breeders/sessions', to: 'session#breeder_create'
  delete '/breeders/logout', to: 'session#breeder_destroy'

  patch '/breeders', to: 'breeders#sort_by_rating', as: 'sort_breeders'

  get '/pets/:id/adopted_new', to: 'pets#adopted_new', as: 'adopted_new'
  post '/pets/:id/adopted', to: 'pets#adopted', as: 'adopted'

  get '/exit', to: 'session#destroy_both'
  delete '/exit', to: 'session#destroy_both'

  get '/profile', to: 'session#get_profile'

  get '/about', to: 'home#about'

  
  
resources :users
resources :pets
resources :breeders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
