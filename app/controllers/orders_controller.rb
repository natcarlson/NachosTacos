class OrdersController < ApplicationController

  def index
    @order = Order.new
    @orders = Order.all
    @party = Party.find(parties_params[:party_id])
  end

  def new
    @order = Order.new
    @orders = Order.all
    #redirect_to orders_path
    @party = Party.find(parties_params[:party_id])
    Party.order.create(orders_params)
  #  @parties = Party.all
  end

  #def edit
  #  @order = Order.all
  #end

  def create
    Order.create(orders_params)
    redirect_to orders_path
    #@party = Party.find(parties_params[:party_id])
    #Party.order.create(orders_params)
  end






  private

  def parties_params
    params.require(:party).permit(:party_id, :table_num, :last_name, :order_id, :menu_id, :mod_id, :employee_id)
  end



  def orders_params
    params.require(:order).permit(:party_id, :menu_id, :mod_id, :mod_name, :table_num, :item_name)
  end


end
