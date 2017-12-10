class UsersController < ApplicationController
  skip_before_action :logged_in_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # signupと同時にlogin
      log_in @user
      flash[:success] = "Welcome to the Mienya!"
      # ↓ redirect_to user_url(@user)
      redirect_to root_url
    else
      render 'new'
    end
  end


  def show
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
