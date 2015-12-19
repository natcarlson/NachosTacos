class OrdersController < ApplicationController

  def index
    @order = Order.new
    @orders = Order.all
  end

  def create
    Order.create(orders_params)
    redirect_to orders_path
  end



  private

  def orders_params
    params.require(:order).permit(:party_id, :menu_id)
  end

end
