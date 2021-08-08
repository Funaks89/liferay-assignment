Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/dashboard', to:'dashboard#show', as: 'Dashboard'
  get '/users/:id', to: 'users#show', as: 'user' 
  get '/users', to: 'users#index', as: 'users'
  get '/recognitions/new', to: 'recognitions#new'
  post 'recognitions', to: 'recognitions#create'
  get '/recognitions/:id/edit', to: 'recognitions#edit'

  resources :users

end
