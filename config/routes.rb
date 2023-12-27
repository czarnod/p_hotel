Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get 'about', to: 'pages#about'
  get 'employee', to: 'pages#employee'
  get 'contact', to: 'pages#contact'
  get 'prices', to: 'pages#prices'
  resources :pets
end
