class EmployeesController < ApplicationController

  before_action :authenticate!

  def index
    @employees = Employee.all
    @employee = Employee.new
  end

  def create
    Employee.create(employee_params)
    redirect_to employees_path
  end

  def destroy
    Employee.delete(params[:id])
    redirect_to employees_path
  end


  private

  def employee_params
    params.require(:employee).permit(:emp_num, :emp_class, :emp_name)
  end


end
