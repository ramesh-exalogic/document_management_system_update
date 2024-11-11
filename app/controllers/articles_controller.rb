class ArticlesController < ApplicationController
   def new
    @article = Article.new
  end
  def show
    @article = Article.find(params[:id])
  end
  def create
    article = Article.create(article_params)
    #byebug
    article.image.attach(params[:article][:image])
    #article..attach(params[:article][:image])
    redirect_to root_path
  end
  private
  def article_params
    params.require(:article).permit(:title, :body, :user_id, :document_no, :document_name, :document_category, :status)
  end
end
