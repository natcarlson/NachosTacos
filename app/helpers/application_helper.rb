module ApplicationHelper

  def current_manager
    if session[:manager_id]
      @current_manager = @current_manager ||
      Manager.find(session[:manager_id])
    end
  end

  def authenticate!
    redirect_to root_path unless current_manager
  end

end
