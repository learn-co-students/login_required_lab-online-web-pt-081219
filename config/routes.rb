Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login', to: 'sessions#new', as: :new_sessions
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/secrets', to: 'secrets#show'
  get 'secret', to: 'secrets#secret'

end
