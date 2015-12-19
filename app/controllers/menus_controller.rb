class MenusController < ApplicationController

  before_action :authenticate!

  def index
    @menus = Menu.all
    @menu = Menu.new
  end

  def create
    Menu.create(menu_params)
    redirect_to menus_path
  end

  def destroy
    Menu.delete(params[:id])
    redirect_to menus_path
  end


  private

  def menu_params
    params.require(:menu).permit(:item_name, :item_class, :item_price)
  end


end
