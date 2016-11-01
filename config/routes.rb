Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture' => 'pokemons#capture'
  patch 'damage' => 'pokemons#damage'
  get '/pokemon/new', to: 'pokemons#new'
  post '/pokemons', to: 'pokemons#create'
end
