Rails.application.routes.draw do
  get 'home/index'
  # get 'moves/index'
  # get 'moves/show'
  # get 'pokemons/index'
  # get 'pokemons/show'

  resources :pokemons, only: %i[index show]
  resources :moves, only: %i[index show]
end
