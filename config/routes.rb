Rails.application.routes.draw do
  get 'welcome/new'

  get 'sessions/new'

  get 'users/new'

  get '/welcome' => 'welcome#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
