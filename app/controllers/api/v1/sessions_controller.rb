class Api::V1::SessionsController < ApplicationController


  def create
    @user = User.find_by(username: params[:username])
    if !!@user && !!@user.authenticate(params[:password])
      render json: {id: @user.id, username: @user.username, comments: @user.comments, valid: true}
    else
      render json: { errors: "Incorrect Username or Password",  valid: false }, status: :unprocessible_entity
    end
  end

  def destroy

    # render json response that tells frontend to remove
    # user from state
  end
end
