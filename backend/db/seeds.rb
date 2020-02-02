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
    Pokemon.create!(
        name: pokemon["name"],
        height: pokemon["height"],
        weight: pokemon["weight"],
        front_img: pokemon["sprites"]["front_default"],
        back_img: pokemon["sprites"]["back_default"]
    )
end