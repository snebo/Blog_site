# controller class for articles
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unporcessable_entity
    end
  end

  def new
    @article = Article.new
  end

  # def skip-routes
  # end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
