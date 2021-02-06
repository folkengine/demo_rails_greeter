# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root "greet#index"

  get "/greet", to: "greet#index"
end
