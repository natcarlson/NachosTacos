class OrdersController < ApplicationController
 skip_before_filter :verify_authenticity_token
  def index
    @order = Order.new
    @orders = Order.all
  end

  def new

    # @orders = Order.all
    @party = Party.find(params[:party_id])
    @order = @party.orders.new

    # redirect_to orders_path
    #@party = Party.find(parties_params[:party_id])
    #Party.order.create(orders_params)
  #  @parties = Party.all
  end

  #def edit
  #  @order = Order.all
  #end

  def create
    @order = Order.create(orders_params)


    redirect_to kitchen_path
    #@party = Party.find(parties_params[:party_id])
    #Party.order.create(orders_params)
  end

  def track
    @allorders = Order.all
  end

  def show

    @party = Party.find(params[:party_id])
    @order = @party.orders


    @check = 0
    @party.orders.each do |order|
      @check += (order.menu.item_price + order.mod.mod_price)
    end

    @tax = 0
    @party.orders.each do |order|
      @tax = (@check * 0.0825)
    end

    @total = 0
    @party.orders.each do |order|
      @total = (@check + @tax)
    end

    @tip15 = 0
    @party.orders.each do |order|
      @tip15 = (@check * 1.15)
    end

    @tip20 = 0
    @party.orders.each do |order|
      @tip20 = (@check * 1.20)
    end

    @tip25 = 0
    @party.orders.each do |order|
      @tip25 = (@check * 1.25)
    end
  end

  def delete

  end

  def is_complete
    @order = Order.find(params[:id])
    @order.update({complete: true})
    @order.save
    redirect_to kitchen_path
  end






  private

  def parties_params
    params.require(:party).permit(:party_id, :table_num, :last_name, :order_id, :menu_id, :mod_id, :employee_id)
  end



  def orders_params
    params.require(:order).permit(:party_id, :menu_id, :mod_id, :mod_name, :table_num, :item_name, :complete)
  end


end
