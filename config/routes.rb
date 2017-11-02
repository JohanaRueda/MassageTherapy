Rails.application.routes.draw do
 #root 'application#hello'
 get "/tabs/:tab" => "tabs#show"
 root "tabs#show", tab: "test"
end
