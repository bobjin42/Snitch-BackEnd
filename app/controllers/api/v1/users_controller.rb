class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @user =  User.new(user_params)
    if @user.save
      render json: {id: @user.id, username: @user.username, comments: @user.comments, valid: true}
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end
  # above, we don't want to return the entire user, just enough data for them to
  # properly navigate the app

  private

  def user_params
    params.permit(:name, :username, :email, :password)
  end




end
