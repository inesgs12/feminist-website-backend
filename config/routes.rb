Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:signup, :signin, :validate, :edit, :update, :show, :destroy]
  resources :favourite_theories, only: [:index, :show, :create, :destroy]
  resources :favourite_books, only: [:index, :show, :create, :destroy]
  resources :favourite_authors, only: [:index, :show, :create, :destroy]
  resources :publications, only: [:index, :show]
  resources :books, only: [:index, :show]
  resources :authors, only: [:index, :show] 
  resources :theories, only: [:index, :show]
  resources :reviews, only: [:index, :show, :create, :edit, :update, :destroy]
 
  post '/signin', to: 'users#signin'
  #you want to be able to send your id even when you make get requests
  #we can put metadata in our headers
  get '/validate', to: 'users#validate'

  post '/signup', to: 'users#signup'

end
