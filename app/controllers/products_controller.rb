class ProductsController < InheritedResources::Base
  before_action :initialize_session
  before_action :increment_visit_count
  before_action :load_cart

  def index
    @products = Product.page(params[:page])
  end

  def about; end

  def add_to_cart
    id = params[:id].to_i

    session[:cart] << id unless session[:cart].include?(id)
    redirect_to products_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to products_path
  end

  private

  def initialize_session
    session[:visit_count] ||= 0
    session[:cart] ||= []
  end

  def load_cart
    @cart = Product.find(session[:cart])
  end

  def increment_visit_count
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
  end

  def new
    @product = Product.new
    @categories = Category.all.order(:name)
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all.order(:name)
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :description, :category_id, :image)
    end

end
