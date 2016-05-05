class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render 'new'
    end
  end

  def new
    redirect_to '/' unless !logged_in?
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:type,
                               :phase,
                               :email,
                               :password,
                               :phone,
                               :first_name,
                               :last_name)
  end
end
