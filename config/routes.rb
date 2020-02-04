Rails.application.routes.draw do
  get 'secrets/new'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  get '/secret', to: 'secrets#show'

  get '/secret', to: 'secrets#require_login'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
