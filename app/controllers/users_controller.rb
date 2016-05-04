class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    @user.assign_attributes(user_params)
    if @user.save
      redirect_to '/'
    else
      render 'edit'
    end
  end

  def destroy

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
