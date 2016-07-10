Rails.application.routes.draw do
  resources :people
  devise_for :users
  root to: 'pages#home'

end
