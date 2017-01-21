Rails.application.routes.draw do
  
  resources :video_tags
  root 'welcome#index'
  get 'welcome/index'

  resources :tags
  resources :socials
  resources :arts
  resources :roles
  resources :users
  resources :speedpaints
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
