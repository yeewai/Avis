class SessionsController < ApplicationController
  # Manages the user login sessions/cookies
  def new
  end
  
  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      cookies[:user_id] = {:value => user.id, :expires => Time.now + 60*60*24*30}
      redirect_to users_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  
  def destroy
    cookies[:user_id] = nil
    redirect_to root_url
  end
  
end
