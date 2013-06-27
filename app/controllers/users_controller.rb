class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      #kick back to signup page
      render :new
    end
  end

  def show
    redirect_to root_path if !current_user || User.find(params[:id]) != current_user
    @posts = current_user.posts
    @comments = current_user.comments
  end

end
