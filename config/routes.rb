Rails.application.routes.draw do
    get "/" => "homes#top"
    get "/homes" => "homes#index"
    post "homes" => "books#create"
    # get "/homes/show" => "homes#show"
    get "/homes/edit" => "homes#edit"
    get "homes/:id" => "homes#show", as: "home"
    get "homes/edit/:id" => "homes#edit", as: "edit_home"
    patch "/homes/:id" => "books#update", as: "update_book"
    delete "homes/:id/destroy" => "books#destroy", as: "destroy_book"
    delete "/homes" => "books#destroy"

resources :homes
resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 