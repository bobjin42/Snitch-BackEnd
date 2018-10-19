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
    @user.name = user_params[:name]
    @user.username = user_params[:username]
    @user.email = user_params[:email]
    @user.password = user_params[:password]
    if @user.save
      render json:@user
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end



end
