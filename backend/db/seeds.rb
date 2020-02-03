require 'rest-client'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..150 do
    response_string = RestClient.get("https://pokeapi.co/api/v2/pokemon/#{i}")
    pokemon = JSON.parse(response_string)
    new_pokemon = Pokemon.create!(
        name: pokemon["name"],
        height: pokemon["height"],
        weight: pokemon["weight"],
        front_img: pokemon["sprites"]["front_default"],
        back_img: pokemon["sprites"]["back_default"]
    )
    pokemon["types"].each do |kind|
        new_kind = Kind.find_or_create_by!(name: kind["type"]["name"])
        PokeKind.create!(pokemon_id: new_pokemon.id, kind_id: new_kind.id)
    end
    pokemon["moves"].each do |move|
        new_move = Move.find_or_create_by!(name: move["move"]["name"])
        PokeMove.create!(pokemon_id: new_pokemon.id, move_id: new_move.id)
    end
end