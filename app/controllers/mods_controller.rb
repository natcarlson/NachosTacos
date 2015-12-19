class ModsController < ApplicationController

  before_action :authenticate!

  def index
    @mods = Mod.all
    @mod = Mod.new
  end

  def create
    Mod.create(mod_params)
    redirect_to mods_path
  end

  def destroy
    Mod.delete(params[:id])
    redirect_to mods_path
  end


  private

  def mod_params
    params.require(:mod).permit(:mod_name, :mod_class, :mod_price)
  end


end
