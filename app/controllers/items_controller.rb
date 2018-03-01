class ItemsController < ApplicationController
  before_action :set_department, only: [:index, :new, :create, :show, :edit, :update, :destroy ]
  before_action :set_item, only: [:show, :edit, :update, :destroy ]

  def index
    @items = @department.items.all
  end
  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = @department.items.new
  end

  def create
    @item = @department.items.new(item_params)

    if @item.save
      redirect_to department_item_path(@item.department_id, @item)
    else
      render :new
    end
  end

  def flop
    item = Item.find(params[:id])
    item.selected = !item.selected # flop the status
    item.save
    @department = :num
    redirect_to department_items_path(params[:num])

  end

  def update
    if @item.update(item_params)
      redirect_to department_item_path(@item.department_id, @item)
    else
      render :index
    end
  end
  def destroy
    @item.destroy
    redirect_to department_items_path
  end
  private

  def set_selected
    params.require(:item).permit(:selected)
  end

  def set_department
    @department = Department.find(params[:department_id])
  end
  def set_item
    @item = Item.find(params[:id])
  end
  def item_params
    params.require(:item).permit(:name, :description, :price)
  end
end
