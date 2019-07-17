Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :favourite_theories
  resources :favourite_books
  resources :favourite_authors
  resources :publications
  resources :books 
  resources :authors 
  resources :theories
  resources :reviews
 
  post '/signin', to: 'users#signin'
  #you want to be able to send your id even when you make get requests
  #we can put metadata in our headers
  get '/validate', to: 'users#validate'

  post '/signup', to: 'users#signup'

end
