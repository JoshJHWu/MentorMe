class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def destroy
    session.clear
    redirect_to '/login'
  end

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
