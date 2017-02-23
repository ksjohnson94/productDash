class ProductsController < ApplicationController
  def index
    @products = Product.all
    @category = Category.all
  end

  def show
    @products = Product.find(params[:id])
    @category = Category.find(@products.category_id)
  end

  def new
    @product = Product.new
    @category = Category.all
  end

  def edit
    @category = Category.all
    @product = Product.find(params[:id])

  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/'
    else
      flash[:errors] = @product.errors.full_messages
      redirect_to '/back'
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to '/'
    else
      flash[:errors] = @product.errors.full_messages
      redirect_to '/back'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy!
    redirect_to '/back'
  end
  private
  def product_params
    params.require(:product).permit(:name, :description, :pricing, :category_id)
  end
end
