Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :ads

  resources :users

  # Rails.application.routes.draw do
  #   devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # end
end
