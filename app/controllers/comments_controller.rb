class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
      @comment = Comment.create(params[:comment])
      User.find(current_user.id).comments << @comment     #XXXXXXXXXXXXXX INSERT SESSION KEY
      Post.find(params[:post_id]).comments << @comment
      redirect_to :back
  end

  def edit
    puts params[:id]
    if current_user && current_user.id == Comment.find(params[:id]).user.id
      @comment = Comment.find(params[:id])
      @post = Post.find(params[:post_id])
    else
      render text: "gtfo"
    end
  end

  def update
    comment = Comment.find(params[:id])
    comment.update_attributes(params[:comment])
    redirect_to post_path(comment.post)
  end

  def destroy
    Comment.destroy(params[:id])
    redirect_to root_path
  end

  def show
    puts params.inspect
    comment = Comment.find(params[:id])
    render text: comment
  end
end
