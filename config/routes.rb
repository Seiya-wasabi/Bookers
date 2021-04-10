Rails.application.routes.draw do
get "/" => "homes#top"
get "/homes" => "homes#index"
post "homes" => "books#create"
# get "/homes/show" => "homes#show"
get "/homes/edit" => "homes#edit"
get "homes/:id" => "homes#show"
get "homes/edit/:id" => "homes#edit", as: "edit_home"
post "/homes/:id/update" => "books#update", as: "update_book"
post "homes/:id/destroy" => "books#destroy", as: "destroy_book"

resources :homes
resources :books


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
