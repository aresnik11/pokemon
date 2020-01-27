class Move < ApplicationRecord
    has_many :poke_moves
    has_many :pokemons, through: :poke_moves
end
