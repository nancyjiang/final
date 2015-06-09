Rails.application.routes.draw do

resources :users
resources :photos
resources :sessions

get "/logout", to: "sessions#destroy"
get "photos/vote/:id", to: "photos#vote", as: "submit_vote"

root to: "photos#index"

end
