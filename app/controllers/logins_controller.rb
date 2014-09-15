class LoginsController < ApplicationController
  skip_before_filter :authorize, :only => [:new, :create]

  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to articles_path, notice: "You have successfully logged in."
    else
      raise "Invalid login."
    end
  end

  def destroy
    session[:user_id] = nil 
    redirect_to articles_path
  end

end
