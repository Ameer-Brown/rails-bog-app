Rails.application.routes.draw do

  root "creatures#index"

  get "/creatures", to: "creatures#index", as: 'creatures'
  # get "/creatures/new", to: "cretaures#new", as: 'new_creature'
  # get "/creatures/:id", to: "creatures#show", as: 'creature'
  # post "/cretaures", to: "creatures#create"
  # delete "/creatures/:id", to: "creatures#destroy"

end
