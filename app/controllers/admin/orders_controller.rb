class Admin::OrdersController < ApplicationController
  layout "admin"
    before_action :authenticate_user!
    before_action :admin_required

  def index
    @orders = Orders.order("id DESC")
  end
end
