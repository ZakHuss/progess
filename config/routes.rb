Rails.application.routes.draw do
  devise_for :users
  resources :tasks do
    member do
    put 'change', to: 'tasks#change_status'
    end
  end
  root 'pages#home'
  get 'about', to: 'pages#about'
end
