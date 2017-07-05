class ProductsController < ApplicationController

  def index

    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    @product.add_product_to_cart(@product)
    flash[:noitce]='成功加入购物车'
    redirect_to :back

  end
end
