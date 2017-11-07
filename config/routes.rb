Rails.application.routes.draw do
  namespace :api do 
    get "/creatures", to: "creatures#index", as:"creatures"
    post "/creatures", to: "creatures#create"
    get "/creatures/:id", to: "creature#show", as: "creature"
    patch "/creatures/:id", to: "creature#update"
    # put "/creatures/:id", to: "creature#update"
    delete "/creatures/:id", to: "creature#destroy"
  end
end
