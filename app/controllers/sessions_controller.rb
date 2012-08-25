class SessionsController < ApplicationController
  # Manages the user login sessions/cookies
  def new
  end
  
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password] && user.role != User::ROLE_BANNED)
      if (params[:remember] == "true")
        cookies.permanent[:user_token] = {:value => user.token}
      else
        cookies[:user_token] = {:value => user.token}
      end
      redirect_to projects_path, :notice => "Logged in!"
    else
      if user.role != User::ROLE_BANNED
        flash.now.alert = "Your account has been banned (probably due to inactivity)! email catalyticproductions@gmail.com to unban your account."
      else
        flash.now.alert = "Invalid email or password"
      end
      render "new"
    end
  end
  
  def destroy
    cookies.delete :user_token
    redirect_to root_url
  end
  
  def chat
  end
  
end
