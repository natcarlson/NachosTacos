class PartiesController < ApplicationController


  def index
    @party = Party.all
  end

  def new
    @party = Party.new
    
  end

  def show
    @party = Party.find(parties_params)

  end

  def create
    @party = Party.create(parties_params)
      redirect_to '/parties'
  end




  private

  def parties_params
    params.require(:party).permit(:last_name, :table_num, :party_id, :order_id, :menu_id, :mod_id)
  end

  def orders_params
    params.require(:order).permit(:table_num, :party_id, :order_id, :menu_id, :mod_id)
  end


end
