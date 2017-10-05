class Api::V1::LogsController < ApplicationController

  def create
    @log = Log.create(log_params)
    render json: @log, status: 201
  end

  private
  def log_params
    params.permit(:beer_id,:cooler_id, :comment, :rating, :date, :location)
  end

end
