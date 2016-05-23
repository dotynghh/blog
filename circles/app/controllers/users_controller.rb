class UsersController < ApplicationController
  before_filter :auth_user, only: [:index]
  def new
    @user = User.new
  end
  def index
    @users = User.page(params[:page] || 1).per_page(params[:per_page] || 10).order("id desc")
  end
  def create
    @user = User.new(params.require(:user).permit(:username, :password))
    if @user.save
      flash[:notice] = "Success registed, please Login."
      redirect_to new_session_path
    else
      render action: :new
    end
  end
private
  def auth_user
    unless session[:user_id]
      flash[:notice] =  "请登录"
      redirect_to new_session_path
    end
  end
end