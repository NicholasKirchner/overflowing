class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(params[:post])
    User.find(current_user.id).posts << post #XXXXXXXXXXXXXX what is the session symbol
    redirect_to root_path
  end

  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def edit
    if current_user && current_user.id == Post.find(params[:id]).user.id
      @post = Post.find(params[:id]) 
    else
      render text: "gtfo"
    end
    
  end

  def update
    Post.find(params[:id]).update_attributes(params[:post])
    redirect_to root_path
  end

  def destroy
    post = Post.destroy(params[:id])
    redirect_to root_path
  end
end
