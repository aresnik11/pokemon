class PokeKind < ApplicationRecord
  belongs_to :kind
  belongs_to :pokemon
end
