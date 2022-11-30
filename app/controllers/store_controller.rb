class StoreController < ApplicationController
  def index
    @products = Product.order(:name)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    #No code required here
  end # Automatically loads app/views/store/search.html.erb

  def search_results
    # Use product model to search
  end
end
