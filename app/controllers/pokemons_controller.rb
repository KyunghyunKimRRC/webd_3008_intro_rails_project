class PokemonsController < ApplicationController
  def index
    #@pokemons = Pokemon.all
    @pokemons = Pokemon.order(:id).page(params[:page])
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    type = Type.find(PokemonType.find_by(pokemon_id: params[:id]).type_id)
    @type_name = type.name
    @moves = Move.where(type_id: type.id)
  end

  # def search
  #   wildcard_search = "%#{params[:keywords]}%"
  #   @pokemon = Pokemon.where('name LIKE ?', wildcard_search)
  # end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    category = "#{params[:category]}"

    if category == 'Pokemon'
      @search = Pokemon.where('name LIKE ?', wildcard_search)
    elsif category == "Moves"
      @search = Move.where('name LIKE ?', wildcard_search)
    end
  end
end
