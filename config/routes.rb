Rails.application.routes.draw do
  get 'users/profile'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  resources :posts
  get 'test/index'
  root 'pages#home'
  get 'about', to: 'pages#about'
  get '/profuser/:id', to: 'users#profile', as: 'user'
end
