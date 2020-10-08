Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#welcome'

get  '/login' => 'sessions#new'
post  '/login' => 'sessions#create'
post  '/logout' => 'sessions#destroy'

get '/signup' => 'users#new'
get '/signup' => 'users#create'
# get '/users/:id' => 'users#show'

resources :users


end


