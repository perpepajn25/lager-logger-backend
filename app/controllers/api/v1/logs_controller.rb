class Api::V1::LogsController < ApplicationController

  def index
    @coolers = Cooler.all
    render json: @coolers, status: 200
  end

  def create
    @cooler = Cooler.create(cooler_params)
    render json: @cooler, status: 201
  end

  private
  def cooler_params
    params.permit(:user_id)
  end

end
