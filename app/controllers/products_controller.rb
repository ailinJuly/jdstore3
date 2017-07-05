class ProductsController < ApplicationController

  def index

    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    @product.add_product_to_cart(product_params)
    redirect_to :back

  end
end
