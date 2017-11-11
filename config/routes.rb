Rails.application.routes.draw do
<<<<<<< HEAD
  resources :users
 #root 'application#hello'
 get "/tabs/:tab" => "tabs#show"

 get  '/home',    to: 'static_pages#home'
 get  '/courses',    to: 'static_pages#courses'
 get  '/contact', to: 'static_pages#contact'
 get  '/login',   to: 'static_pages#login'
 root "tabs#show", tab: "test"
=======
   
  resources :users
  resources :rosters
  #get 'users/new'

 #root 'application#hello'
 #get "/tabs/:tab" => "tabs#show"
 #root "tabs#show", tab: "test"
>>>>>>> 2aa709b3c34b9c3ea13513c356d06320ba63260b
end
