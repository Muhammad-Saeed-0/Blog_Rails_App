Rails.application.routes.draw do
  resources :posts
  get 'test/index'

  root 'pages#home'

  get 'about', to: 'pages#about'
end
