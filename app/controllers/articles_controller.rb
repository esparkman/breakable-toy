class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all
    respond_to do |format|
      format.html
      format.json { render json: ArticleSerializer.new(@articles).serialized_json }
    end
  end

  def new
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
