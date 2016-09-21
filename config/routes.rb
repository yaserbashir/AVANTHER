Rails.application.routes.draw do
 
  get 'sessions/new'

 resources :products

 get  '/signup',  to: 'users#new'
 post '/signup',  to: 'users#create'

 resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'



 root 'products#index'

end
