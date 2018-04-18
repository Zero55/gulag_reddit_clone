class UserController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:email, :password, :password_confirmation))
    if @user.save
      flash[:info] = "Sign up successful"
      redirect_to root_url
    else
      render "new"
    end
  end

  
end
