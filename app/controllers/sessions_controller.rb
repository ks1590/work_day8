class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to blogs_path
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    session[:user_id] = user.id
    redirect_to blogs_path
  end
  
end
