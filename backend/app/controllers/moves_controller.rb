class MovesController < ApplicationController
  def index
    moves = Move.all
    render json: moves
  end

  def show
    move = Move.find_by(id: params[:id])
    if move
      render json: move
    else
        render json: { errors: 'No move found' }, status: :not_found
    end
  end
end
