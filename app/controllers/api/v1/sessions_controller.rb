class Api::V1::SessionsController < ApplicationController


  def create
    @user = User.find_by(username: params[:username])
    if !!@user && !!@user.authenticate(params[:password])
      render json: @user.id
    else
      render json: { errors: "Incorrect Username or Password" }, status: :unprocessible_entity
    end
  end

  def destroy

    # render json response that tells frontend to remove
    # user from state
  end
end
