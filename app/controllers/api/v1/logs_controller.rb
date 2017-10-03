class Api::V1::LogsController < ApplicationController

  def create
    @log = Log.create(log_params)
    render json: @log, status: 201
  end

  private
  def cooler_params
    params.permit(:content)
  end

end
