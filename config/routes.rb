Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/dashboard', to:'dashboard#show', as: 'dashboard'

  resources :users, only: [:index, :show] do
    resources :recognitions, only:[:new, :create]
  end

end
