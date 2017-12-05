Rails.application.routes.draw do
  resources :users
  resources :rosters
  resources :courses
  resources :offerings
  resources :password_resets,     only: [:new, :create, :edit, :update]

  get '/home', to: 'static_pages#home'
  get '/courses', to: 'static_pages#courses'
  
  get '/admin_active', to: 'admin_pages#active_courses'
  get '/admin_add', to: 'admin_pages#add_course'
  get '/admin_edit', to: 'admin_pages#edit_course'
  get '/admin_delete', to: 'admin_pages#delete_course'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'static_pages/home'
  get 'static_pages/courses'
  get 'static_pages/contact'
  
  get 'users/new'
  get 'users/edit'
  
  get 'admin_pages/active_courses'
  get 'admin_pages/add_course'
  get 'admin_pages/delete_course'
  get 'admin_pages/edit_course'
  
  #get    '/contact',   to: 'contacts#new'
  #post   '/contact',   to: 'contacts#create'
  match '/contact',     to: 'contacts#new',  via: 'get'
  resources "contacts", only: [:new, :create]
  
  root 'static_pages#home'
end
