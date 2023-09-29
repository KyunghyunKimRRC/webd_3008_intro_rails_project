# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'json'

Move.delete_all
PokemonType.delete_all
# Pokemon.delete_all
Type.delete_all

# Type Seed
types_filename = Rails.root.join("db/types.json")
puts "Loading Pokemon Types from the json file: #{types_filename}"

types_json_data = File.read(types_filename)
types = JSON.parse(types_json_data)

# puts types[0]

types.each do |type|
    Type.find_or_create_by(name: type["english"])
end

# Pokedex Seed
pokedex_filename = Rails.root.join("db/pokedex.json")
puts "Loading Pokemons from the json file: #{pokedex_filename}"

pokedex_json_data = File.read(pokedex_filename)
pokedex = JSON.parse(pokedex_json_data)

pokedex.each do |pdex|
    pokemon = Pokemon.find_or_create_by(id: pdex['id'], name: pdex['name']['english'], hp: pdex['base']['HP'], attack: pdex['base']['Attack'], defense: pdex['base']['Defense'], sp_attack: pdex['base']['Sp. Attack'], sp_defense: pdex['base']['Sp. Defense'], speed: pdex['base']['Speed'])
    pdex['type'].each do |t|
        type = Type.find_by(name: t)
        PokemonType.find_or_create_by(pokemon: pokemon, type: type)
    end
end

# Move Seed
moves_filename = Rails.root.join("db/moves.json")
puts "Loading Pokemon Moves from the json file: #{moves_filename}"

moves_json_data = File.read(moves_filename)
moves = JSON.parse(moves_json_data)

moves.each do |move|
    type = Type.find_by(name: move['type'])
    Move.find_or_create_by(name: move['ename'], power: move['power'], accuracy: move['accuracy'], type: type, pp: move['pp'])
end