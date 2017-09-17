Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :contacts
  resources :sales
  resources :products
  resources :product_types
  devise_for :users
  post '/login' => 'login#login'

  root to: redirect('/admin')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
