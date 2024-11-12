class DocumentCategoriesController < ApplicationController
	def new
		@document_category = DocumentCategory.new

	end

	def create
		
	end

	def edit
    @document_category = DocumentCategory.find(params[:id])

    end

     def update
     	@document_category = DocumentCategory.find(params[:id])
	    if @document_category.update(document_category_params)
	      redirect_to @document_category, notice: 'Document was successfully updated.'
	    else
	      render :edit, status: :unprocessable_entity
	    end
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
