Rails.application.routes.draw do
get "/" => "homes#top"
get "/homes/index" => "homes#index"
post "homes" => "books#create"
get "/homes/show" => "homes#show"
get "/homes/edit" => "homes#edit"

# resources :homes
resources :books


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
