Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'music_venues', to: 'music_venues#index'
  get 'locations', to: 'locations#index'

  resources :articles

  get 'signup', to: 'users#new'
  # post 'users', to: 'user#create'
  #OR
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'



  resources :categories, except: [:destroy]

end
