class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :height, :weight, :front_img, :back_img
  has_many :moves
  has_many :kinds
end
