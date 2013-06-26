class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(params[:comment])
    # debugger
    # User.find().comments << @comment     #XXXXXXXXXXXXXX INSERT SESSION KEY
    Post.find(params[:post_id]).comments << @comment
    redirect_to :back
  end

  def edit
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
  end

  def update
    Comment.find(params[:id]).update_attributes(params[:comment])
  end

  def destroy
    Comment.destroy(params[:id])
  end
end
