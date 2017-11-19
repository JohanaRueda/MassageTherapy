Rails.application.routes.draw do
  resources :users
  resources :rosters
  resources :courses
  resources :offerings
 
 get  '/home',    to: 'static_pages#home'
 get  '/courses',    to: 'static_pages#courses'
 get  '/contact', to: 'static_pages#contact'
 get  '/admin_active', to: 'admin_pages#active_courses'
 get  '/admin_add', to: 'admin_pages#add_course'
 get  '/admin_edit', to: 'admin_pages#edit_course'
 get  '/admin_delete', to: 'admin_pages#delete_course'
 
 get    '/signup',  to: 'users#new'
 get    '/login',   to: 'sessions#new'
 post   '/login',   to: 'sessions#create'
 delete '/logout',  to: 'sessions#destroy'

 get 'static_pages/home'
 get 'static_pages/courses'
 get 'static_pages/contact'
 #get 'static_pages/login'
 get 'users/new'
 get 'admin_pages/active_courses'
 get 'admin_pages/add_course'
 get 'admin_pages/delete_course'
 get 'admin_pages/edit_course'
 
 root 'static_pages#home'
end
