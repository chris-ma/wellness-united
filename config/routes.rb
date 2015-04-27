Rails.application.routes.draw do
  resources :clinics
  root 'clinics#index'
end
