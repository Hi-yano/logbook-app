class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    if item.valid?  
      item.save
      redirect_to new_area_logbook_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:thickness, :type_id, :weight, :dive_tank_cap_id, :dive_tank_type_id).merge(area_id: params[:area_id])
  end
end