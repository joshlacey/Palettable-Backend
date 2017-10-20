class Api::V1::PalatesController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]


  def index
    @palates = Palate.all
    render json: @palates, status: 200
  end

  def show
    @palate = Palate.find_by(id: params[:id])
    render json: @palate, status: 200
  end

  def create
    @palate = Palate.new(user_id: palate_params[:user_id], data: palate_params[:palate_data])
    if @palate.valid?
      @palate.save
      render json: @palate, status: 201
    else
      render json: @palate.errors, status: 400
    end
  end


private

  def palate_params
    params.permit(:id, :user_id, palate_data: [ copy:[], :title, :note ])
  end

end
