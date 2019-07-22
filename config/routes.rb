Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:signup, :signin, :validate, :edit, :update, :show, :destroy]
  resources :favourite_theories, only: [:index, :show, :create, :destroy]
  resources :favourite_books, only: [:index, :show, :create, :destroy]
  resources :books, only: [:index]
  resources :authors, only: [:index] 
  resources :theories, only: [:index]
  resources :reviews, only: [:index, :show, :create, :edit, :update, :destroy]
 
  get '/books/:title', to: 'books#show'
  get '/authors/:name', to: 'authors#show'
  get '/books/:name', to: 'theories#show'

  post '/signin', to: 'users#signin'
  #you want to be able to send your id even when you make get requests
  #we can put metadata in our headers
  get '/validate', to: 'users#validate'

  post '/signup', to: 'users#signup'

end
