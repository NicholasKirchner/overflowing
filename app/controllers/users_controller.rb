class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_path(@user)
    else
      #kick back to signup page
      render :new
    end
  end

  def show

  end

end
