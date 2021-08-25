Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/animals', to: 'animals#index'

  resources :animals do
    resources :bookings, only: [:show, :new, :create]
  end

  get '/my_bookings', to: 'bookings#user_index'
end
