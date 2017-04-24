Rails.application.routes.draw do

get "home" => "posts#home"
get "signup" => "users#new"  
get "signin" => "sessions#new"

	resources :posts
	resources :users
	resources :sessions


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
