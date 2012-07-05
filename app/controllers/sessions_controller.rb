class SessionsController < ApplicationController
  # Manages the user login sessions/cookies
  def new
  end
  
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      cookies[:user_id] = {:value => user.id}
      redirect_to users_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  
  def destroy
    cookies.delete :user_id
    redirect_to root_url
  end
  
end
