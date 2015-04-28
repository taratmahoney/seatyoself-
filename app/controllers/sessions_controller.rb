class SessionsController < ApplicationController
  def new
  end

  def create 
  	user = User.find_by(email: params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to "/restaurants", :notice => "Logged in!"
  	else 
  		redirect_to new_session_path, alert: "Invalid email or password"
  	end 
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to products_url, notice: "Logged out!"
  end
end
