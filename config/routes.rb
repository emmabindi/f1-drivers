Rails.application.routes.draw do
  get "/drivers", to: "drivers#index", as: "root"
  get "/drivers/:id", to: "drivers#show", as: "show"
  post "/drivers/create", to: "drivers#create", as: "create"
  get 
end