class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    user = user.try(:authenticate, params[:session][:password])
    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      #kick back to signin page
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end