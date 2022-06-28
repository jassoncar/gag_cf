Rails.application.routes.draw do
  devise_for :usuarios
  root 'main#home'
  resources :ussers
  resources :users
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
