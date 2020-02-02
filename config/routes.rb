Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  post '/logout', to: 'sessions#destroy'
  get '/secret', to: 'secrets#show'
end
