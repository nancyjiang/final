Rails.application.routes.draw do

resources :users
resources :photos
resources :sessions

get "/logout", to: "sessions#destroy"

root to: "home#index"

end
