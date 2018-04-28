Rails.application.routes.draw do


  resources :for_women
  resources :for_men
  resources :products


  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/contact'=> 'static_pages#contact'
  get '/about' => 'static_pages#about'
  get '/men' => 'static_pages#men'
  get '/women' => 'static_pages#women'
  get '/howtobuy' => 'static_pages#howtobuy'
  get '/material' => 'static_pages#material'
  get '/termsofexchange' => 'static_pages#termsofexchange'
  get '/shipping_payment' => 'static_pages#shipping_payment'

  get :search, controller: :products
  get :search, controller: :for_men
  get :search, controller: :for_women

  get :autocomplete, controller: :products
  get :autocomplete, controller: :for_men
  get :autocomplete, controller: :for_women

  root  'static_pages#home'

  # resources :products

end
