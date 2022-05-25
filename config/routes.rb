Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
  # GET the restaurant creation form = 1 request
  get "tasks/new", to: "tasks#new", as: :new_task
  # POST the parameters to create a new restaurant = 1 request  
  post "tasks", to: "tasks#create"

  delete "tasks/:id", to: "tasks#destroy"

  get "tasks/:id", to: "tasks#show", as: :task

end

