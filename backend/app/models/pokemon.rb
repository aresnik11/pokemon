class Pokemon < ApplicationRecord
    has_many :poke_moves
    has_many :moves, through: :poke_moves
    has_many :poke_kinds
    has_many :kinds, through: :poke_kinds
end
