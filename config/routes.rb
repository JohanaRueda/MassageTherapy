Rails.application.routes.draw do
  resources :users
 #root 'application#hello'
 get "/tabs/:tab" => "tabs#show"

 get  '/home',    to: 'static_pages#home'
 get  '/courses',    to: 'static_pages#courses'
 get  '/contact', to: 'static_pages#contact'
 get  '/login',   to: 'static_pages#login'
 root "tabs#show", tab: "test"
end
