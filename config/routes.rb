Rails.application.routes.draw do
  resources :users
  resources :rosters
 #root 'application#hello'
 #get 'users/new'

 get  '/home',    to: 'static_pages#home'
 get  '/courses',    to: 'static_pages#courses'
 get  '/contact', to: 'static_pages#contact'
 get  '/login',   to: 'static_pages#login'
 
 get 'static_pages/home'

 get "/tabs/:tab" => "tabs#show"
 root "tabs#show", tab: "test"

end
