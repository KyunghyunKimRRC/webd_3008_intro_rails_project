Rails.application.routes.draw do
  get 'moves/index'
  get 'moves/show'
  get 'pokemons/index'
  get 'pokemons/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
