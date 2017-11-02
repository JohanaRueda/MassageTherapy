Rails.application.routes.draw do
  get 'users/new'

 #root 'application#hello'
 get "/tabs/:tab" => "tabs#show"
 root "tabs#show", tab: "test"
end
