class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.save!
    redirect_to products_path, notice: "#{product.name}を登録しました。"
  end

  def edit
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :descriprion)
  end
end
