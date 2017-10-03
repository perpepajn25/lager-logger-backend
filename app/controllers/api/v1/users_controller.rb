class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    @user = User.find_or_create_by(user_params)
    @cooler = Cooler.find_or_create_by(user: @user)
    render json: @user
  end

private
  def user_params
    params.permit(:username)
  end

end
