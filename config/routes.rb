Rails.application.routes.draw do
  devise_for :users
root "pages#home"
get "/edit", to: "pages#edit", as: "edit_service"
get "/home", to: "pages#home", as: "home"
get "/index", to: "pages#index", as: "index"
get "/new", to: "pages#new", as: "new_service"
get "/restricted", to: "pages#restricted", as: "restricted"
get "/show", to: "pages#show", as: "show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
