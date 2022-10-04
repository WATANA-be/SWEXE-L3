Rails.application.routes.draw do
  get 'twitters/index',to:'twitters#index'
  root 'twitters#index'
  
  get 'twitters/new', to:'twitters#new'
  post 'twitters', to:'twitters#create'
  
  delete 'twitters/:id', to:'twitters#destroy'
  get 'twitters/:id' , to:'twitters#show'
  get 'twitters/:id/edit', to:'twitters#edit'
  patch 'twitters/:id', to:'twitters#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


