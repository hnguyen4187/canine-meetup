Rails.application.routes.draw do
  # get 'admins/index'
  # get 'admins/new'
  # get 'admins/create'
  # get 'admins/show'
  # get 'admins/update'
  # get 'admins/destroy'
  # get 'admins/edit'
  # get 'user/index'
  # get 'user/new'
  # get 'user/create'
  # get 'user/show'
  # get 'user/update'
  # get 'user/destroy'
  # get 'user/edit'
  # get 'events/index'
  # get 'events/edit'
  # get 'events/form'
  # get 'events/new'
  # get 'events/show'
  # get 'dogs/index'
  # get 'dogs/edit'
  # get 'dogs/new'
  # get 'dogs/show'
  # get 'dogs/form'

  resources :dogs, :only => [:show, :edit, :update, :destroy]
  resources :events


  devise_for :admins
  devise_for :users
  resources :users, :only => [:show, :edit, :update, :destroy]

  # authenticated :user do
  #   root 'user#show', as: :authenticated_root
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  root 'users#show'
end
