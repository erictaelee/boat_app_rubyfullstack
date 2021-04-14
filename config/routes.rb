Rails.application.routes.draw do
  resources :passengers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/boats" => "boats#index"
  get "/boats/:id" => "boats#show"
  get "/boats/new" => "boats#new"
  post "/boats" => "boats#create"
  
end
