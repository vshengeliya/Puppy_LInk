Rails.application.routes.draw do
  
resources :centers
resources :pets
resources :breeders
resources :users


get '/adopted', to: 'pets#adopted', as: 'adopted'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
