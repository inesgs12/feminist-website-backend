Rails.application.routes.draw do
  resources :favourite_theories
  resources :favourite_books
  resources :favourite_authors
  resources :publications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
