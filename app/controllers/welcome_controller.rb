class WelcomeController < ApplicationController
  def index
    @user = if session[:user_id]
      User.find session[:user_id]
    else
      nil
    end
     @articles = Article.page(params[:page] || 1).per_page(params[:per_page] || 10).order("id desc")
  end
end
