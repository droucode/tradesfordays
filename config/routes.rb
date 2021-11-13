Rails.application.routes.draw do
  devise_for :users
root "pages#home"
get "/restricted", to: "pages#restricted", as: "restricted"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
