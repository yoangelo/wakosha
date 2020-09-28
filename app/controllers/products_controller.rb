class ProductsController < ApplicationController
  before_action :login_required, only: %i[new create edit update destroy]

  def index
    @products = Product.all.recent
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: "#{@product.name}を登録しました。"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update!(product_params)
    redirect_to products_path, notice: "#{product.name}を編集しました。"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to products_path, notice: "#{product.name}を削除しました。"
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, images: [])
  end
end
