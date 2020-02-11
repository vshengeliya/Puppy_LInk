Rails.application.routes.draw do

  root 'home#home'

  get '/users', to: 'users#index', as:'users'
  get '/signup', to: 'users#new', as:'new_user'
  post '/users', to: 'users#create'
  get '/profile', to: 'users#show', as: 'user'

  get '/breeders/login', to: 'session#breeder_new'
  post '/breeders/sessions', to: 'session#breeder_create'
  delete '/breeders/logout', to: 'session#breeder_destroy'

  get '/users/login', to: 'session#new_user'
  post '/users/sessions', to: 'session#create_user'
  delete '/users/logout', to: 'session#destroy_user'

  get '/adopted', to: 'pets#adopted', as: 'adopted'

resources :centers
resources :pets
resources :breeders





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
