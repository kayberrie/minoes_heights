Rails.application.routes.draw do

  devise_for :users
  root :to => "home#index"
  match '/dashboard', to: 'dashboard#index', as: 'dashboard', via: :get
  resources :service_items
  resources :services

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #mount Notifications::Engine => "/notifications", as: 'notification'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
