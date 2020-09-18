Rails.application.routes.draw do

  root 'home#index'
  
  get 'home/index'
  get 'home/new'
  post 'home/new'
  get 'home/read'
  get 'home/update'
  post 'home/update'
  match '/home/create', to: 'home#create', via: :post
  match '/home/', to: 'home#index', via: :all

  match '/home/delete', to: 'home#delete', via: :get
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
