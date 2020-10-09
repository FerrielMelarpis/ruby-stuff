Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/profiles", to: "profiles#index", as: "profiles"
  post "/profiles", to: "profiles#create"
  get "/profiles/new", to: "profiles#new", as: "new_profile"
  get "/profiles/:id", to: "profiles#show", as: "profile"
  put "/profiles/:id", to: "profiles#update"
  patch "/profiles/:id", to: "profiles#update"
  delete "/profiles/:id", to: "profiles#destroy"
  get "/profiles/:id/edit", to: "profiles#edit", as: "edit_profile"
end
