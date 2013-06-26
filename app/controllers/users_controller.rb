class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      #redirect to profile page
    else
      #kick back to signup page
      render :new
    end
  end

end
