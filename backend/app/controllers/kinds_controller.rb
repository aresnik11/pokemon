class KindsController < ApplicationController
  def index
    kinds = Kind.all
    render json: kinds
  end

  def show
    kind = Kind.find_by(id: params[:id])
    if kind
      render json: kind
    else
        render json: { errors: 'No kind found' }, status: :not_found
    end
  end
end
