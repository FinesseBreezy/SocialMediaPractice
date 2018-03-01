class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :update, :edit, :destroy]

  def index
    @departments = Department.all
  end

  def show
    redirect_to department_items_path
  end

  def edit
  end

  def new
    @department = Department.new
  end
  def create
    @department = Department.new(department_params)

    if @department.save
      redirect_to departments_path
    else
      render :new
    end
  end
  private

  def set_department
    @department = Department.find(params[:id])
  end
  def department_params
    params.require(:department).permit(:name)
  end

end
