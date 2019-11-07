Rails.application.routes.draw do
  devise_for :users
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root 'home#welcome'
  
  get '/about_us', to: 'home#about_us'

  get '/buying_tools', to: 'home#buying_tools'

  resources :drivers


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
