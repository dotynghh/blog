class ArticlesController < ApplicationController
  def index

  end
  def search
    @articles = Articles.page(params[:page] || 1).per_page(params[:per_page] || 10 )
    .order("id desc").where(["article like ?", "%#{params[:article]}%")
    render index_welcome_path
  end
  def create
    
  end
end
