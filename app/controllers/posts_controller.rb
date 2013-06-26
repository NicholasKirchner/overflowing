class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(params[:post])
    session[:current_user].posts << post #XXXXXXXXXXXXXX what is the session symbol
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
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
