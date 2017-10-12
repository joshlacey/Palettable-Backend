class Api::V1::PaletesController < ApplicationController


  def index
    @paletes = Palete.all
    render json: @paletes, status: 200
  end

  def show
    @palete = Palete.find_by(id: params[:id])
    render json: @palete, status: 200
  end

  def user_paletes
    @paletes = Palete.where(user_id: params[:user_id].order(:timestamps))
    render json: @paletes, status: 200
  end

  def create
    @palete = Palete.new(user_id: params[:user_id], data: params[:data])
    if @palete.valid?
      @palete.save
      render json: @palete, status: 201
    else
      render json: @palete.errors, status: 400
    end
  end


private

  def palete_params
    params.permit(:id, :data, :user_id)
  end

end
