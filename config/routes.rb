Rails.application.routes.draw do
  resources :users
  resources :rosters

 get  '/home',    to: 'static_pages#home'
 get  '/courses',    to: 'static_pages#courses'
 get  '/contact', to: 'static_pages#contact'
 #get  '/login',   to: 'static_pages#login'
 
 get 'static_pages/home'
 get 'static_pages/courses'
 get 'static_pages/contact'
 get 'static_pages/login'
 get 'users/new'
 get 'sessions/new'
 
 get    '/signup',  to: 'users#new'
 get    '/login',   to: 'sessions#new'
 post   '/login',   to: 'sessions#create'
 delete '/logout',  to: 'sessions#destroy'
 
 root 'static_pages#home'
end
