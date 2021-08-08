Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/dashboard', to:'dashboard#show', as: 'Dashboard'
  get '/user/:id', to: 'user#show', as: 'User' 
  get '/recognition/new', to: 'recognition#new'
  post 'recognition', to: 'recognition#create'
  get 'recognition/:id/edit', to: 'recognition#edit'

end
