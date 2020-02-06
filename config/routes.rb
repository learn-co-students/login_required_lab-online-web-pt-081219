Rails.application.routes.draw do
  get 'sessions/login', to: 'sessions#login'
  post 'sessions/create', to: 'sessions#create'
  get 'application/hello', to: 'application#hello'
  get 'secrets/show', to: 'secrets#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
