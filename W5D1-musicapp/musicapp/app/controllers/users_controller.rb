class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find(params[:id])
    redirect_to bands_url
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      redirect_to user_url(@user)
    else
      flash[:errors]= @user.errors.full_messages
      redirect_to new_user_url
    end

  end

  private
  def user_params
    params.require(:user).permit(:email,:password)
  end
end
