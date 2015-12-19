class SessionsController < ApplicationController

  def create
    manager = Manager.find_by_man_num(params[:man_num])
    if manager && manager.authenticate(params[:password])
      session[:manager_id] = manager.id
      redirect_to managers_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:manager_id] = nil
    redirect_to root_path
  end


end
