class ChangePokemonBase < ActiveRecord::Migration[7.0]
  def change
    remove_column :pokemons, :base, :text
    add_column :pokemons, :hp, :integer
    add_column :pokemons, :attack, :integer
    add_column :pokemons, :defense, :integer
    add_column :pokemons, :sp_attack, :integer
    add_column :pokemons, :sp_defense, :integer
    add_column :pokemons, :speed, :integer
  end
end
