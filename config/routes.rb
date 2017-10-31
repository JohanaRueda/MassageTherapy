Rails.application.routes.draw do
  resources :users
 #root 'application#hello'
 get "/tabs/:tab" => "tabs#show"

 get  '/test',    to: 'static_pages#home'
 get  '/help',    to: 'static_pages#help'
 get  '/about',   to: 'static_pages#about'
 get  '/contact', to: 'static_pages#contact'
 get  '/course1', to: 'tabs#course1#show'
 root "tabs#show", tab: "test"
end
