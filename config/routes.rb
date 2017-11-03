Rails.application.routes.draw do
   
  resources :users
  resources :rosters
  #get 'users/new'

 #root 'application#hello'
 #get "/tabs/:tab" => "tabs#show"
 #root "tabs#show", tab: "test"
end
