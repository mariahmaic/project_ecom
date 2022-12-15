class StoreController < ApplicationController
  def index
    @products = Product.order(:name)
  end

  def show
    @product = Product.find(params[:id])
    flash[:notice] = "Product edited."
  end

  def search
    # No code required here
  end # Automatically loads app/views/store/search.html.erb

  def search_results
    # Use product model to search
    if params[:search_categories].present?
      wildcard_keywords = "%" + params[:search_keywords] + "%"
      @products = Product.where(category_id: params[:search_categories]).where("name LIKE ?",
                                                                               wildcard_keywords)
    else
      wildcard_keywords = "%" + params[:search_keywords] + "%"
      @products = Product.where("name LIKE ?", wildcard_keywords)
    end
  end
end
