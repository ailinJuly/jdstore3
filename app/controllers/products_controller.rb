class ProductsController < ApplicationController

  def index

    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
  current_cart.add_product_to_cart(@product)
    flash[:noitce]='成功加入购物车'
  else
    flash[:warning]="您购物车中已经有此物品"
  end
    redirect_to :back

  end
end
