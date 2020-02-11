Rails.application.routes.draw do

  get '/users', to: 'users#index', as:'users'
  get '/signup', to: 'users#new', as:'new_user'
  post '/users', to: 'users#create'
  get '/profile', to: 'users#show', as: 'user'

  get '/breeders/login', to: 'session#new'
  post '/breeders/sessions', to: 'session#create'
  delete '/breeders/logout', to: 'session#destroy'

  get '/users/login', to: 'session#new_user'
  post '/users/sessions', to: 'session#create_user'
  delete '/users/logout', to: 'session#destroy_user'



resources :centers
resources :pets
resources :breeders, only: [:index,:show,:edit,:update,:new,:create]




get '/adopted', to: 'pets#adopted', as: 'adopted'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
