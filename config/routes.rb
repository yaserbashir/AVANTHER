Rails.application.routes.draw do
 
 resources :products

 get  '/signup',  to: 'users#new'
 post '/signup',  to: 'users#create'
 resources :users


 root 'products#index'

end
