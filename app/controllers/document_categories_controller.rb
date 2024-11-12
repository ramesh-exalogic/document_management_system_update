class DocumentCategoriesController < ApplicationController
	def new
		@document_category = DocumentCategory.new

	end

	def create
		
	end


     
  #def show
   # @article = Article.find(params[:id])
  #end
  def create
    document_category = DocumentCategory.create(document_category_params)
    #byebug
    #article.image.attach(params[:article][:image])
    #article..attach(params[:article][:image])
    redirect_to root_path
  end
  private
  def document_category_params
    params.require(:document_category).permit(:name, :role, :view, :edit, :download)
  end

end
