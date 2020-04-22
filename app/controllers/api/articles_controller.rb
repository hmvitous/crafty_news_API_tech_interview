class Api::ArticlesController < ApplicationController
  before_action :authenticate_user!, only: %i[update]

  def index
    articles = Article.all
    render json: { articles: articles }
  end

  def create
  end

  def show
    article = Article.find(params[:id])
    render json: { article: article }
  end
end