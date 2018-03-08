Rails.application.routes.draw do


  get 'parser/index'

  devise_for :admins
  devise_for :users
  resources :users

  resources :sessions, only: [:new, :create, :destroy]
  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  # get 'users/profile'

  # get 'users/profile', as: 'user_root'
  # devise_for :users
  # devise_for :users, controllers: { sessions: 'users/sessions' }


  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/contact'=> 'static_pages#contact'
  get '/about' => 'static_pages#about'

  get :search, controller: :candidates
  get :autocomplete, controller: :candidates

  # root  'static_pages#home'



  resources :candidates

  root  'candidates#index'


end
