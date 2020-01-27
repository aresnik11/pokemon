class Kind < ApplicationRecord
    has_many :poke_kinds
    has_many :pokemons, through: :poke_kinds
end
