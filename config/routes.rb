Rails.application.routes.draw do
  root 'articles#index'
  # get '/articles/new', to: 'articles#new'
  # post '/articles', to: 'articles#create'
  resources :articles
end
