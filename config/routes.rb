Rails.application.routes.draw do
  resources :admins
  resources :user
  resources :events
  resources :dogs

  devise_for :admins
  devise_for :users

  authenticated :user do
    root 'user#show', as: :authenticated_root
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  root 'user#new'
end
