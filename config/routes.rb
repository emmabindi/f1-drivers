Rails.application.routes.draw do
  # root to: "drivers#index" another option
  get "/drivers", to: "drivers#index"
  post "/drivers", to: "drivers#create"
  get "/drivers/new", to: "drivers#new", as: "drivers_new"
  get "/drivers/:id/edit", to: "drivers#edit", as: "drivers_edit"
  get "/drivers/:id", to: "drivers#show", as: "driver"
  put "/drivers/:id", to: "drivers#update"
  patch "/drivers/:id", to: "drivers#update"
  delete "/drivers/:id", to: "drivers#destroy"
end

  # create is to add to a database 

  # new is a form to input