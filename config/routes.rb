Rails.application.routes.draw do
  devise_for :users

=======

  root to: 'animals#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals do
    resources :bookings do
      resources :reviews
    end
  end
end
