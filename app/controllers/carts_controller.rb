class CartsController < ApplicationController
  before_action :set_items;
  def index
    @cart = @items
  end

  private

  def set_items
    @items = Item.where({:selected => true})
  end
end
