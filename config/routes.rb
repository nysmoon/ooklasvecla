Rails.application.routes.draw do
  
  resources :tags
  resources :socials
  resources :arts
  resources :roles
  resources :users
  resources :speedpaints
  
  get 'welcome/index'
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
