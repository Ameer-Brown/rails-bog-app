Rails.application.routes.draw do
  root to: "creatures#index"
  get "/creatures", to: "creatures#index", as: "creatures"
  get "/creatures/new", to: "creatures#new", as: "new_creature"
  get "/creatures/:id", to: "creatures#show", as: "creature"
end
