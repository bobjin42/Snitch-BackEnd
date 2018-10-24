class Api::V1::CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments.to_json(methods: [:username])
  end


  def update
    @comment.update(comment_params)
    if @comment.save
      render json: @comment, status: :accepted
    else
      render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @comment =  Comment.new(comment_params)
    @comment.user_id = comment_params[:user_id]
    @comment.location_id = comment_params[:location_id]
    @comment.commentDescription = comment_params[:commentDescription]
    if @comment.save
      render json:@comment
    else
      render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # def update
  #   @comment = Comment.all.find(params[:id])
  #   if @comment.update(commentDescription: params[:commentDescription])
  #     render json: @comment
  #   else
  #     render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :location_id, :commentDescription)
  end


end
