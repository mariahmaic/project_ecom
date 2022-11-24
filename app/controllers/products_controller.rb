class ProductsController < InheritedResources::Base
  def index
    @products = Product.page(params[:page])
  end

  def new
    @product = Product.new
    @categories = Category.order(:name)
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.order(:name)
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :description, :category_id, :image_filename)
    end

end
