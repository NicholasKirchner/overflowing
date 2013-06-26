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

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
