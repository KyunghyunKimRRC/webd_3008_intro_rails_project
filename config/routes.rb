Rails.application.routes.draw do
  get 'about_us/index'
  get 'home/index'
  # get 'moves/index'
  # get 'moves/show'
  # get 'pokemons/index'
  # get 'pokemons/show'
  root to: 'home#index'
  resources :pokemons, only: %i[index show] do
    collection do
      get 'search'
    end
  end
  resources :moves, only: %i[index show]
end
