Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root :to => "home#index"
  match '/dashboard', to: 'dashboard#index', as: 'dashboard', via: :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
