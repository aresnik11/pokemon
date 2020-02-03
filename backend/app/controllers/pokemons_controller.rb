class PokemonsController < ApplicationController
  def index
    pokemons = Pokemon.all
    render json: pokemons
  end

  def show
    pokemon = Pokemon.find_by(id: params[:id])
    if pokemon
      render json: pokemon
    else
        render json: { errors: 'No pokemon found' }, status: :not_found
    end
  end
end
