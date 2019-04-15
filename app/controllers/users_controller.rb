class UsersController < ApplicationController

  def create
    user = User.find_or_create_by(username: params[:username])
    render json: user
  end

  def show
    user = User.find(params)
  end

end
