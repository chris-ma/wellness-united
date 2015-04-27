Rails.application.routes.draw do
  devise_for :users
  resources :clinics
  root 'clinics#index'
end
