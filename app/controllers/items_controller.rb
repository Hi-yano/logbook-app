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
      redirect_to new_area_item_path(params[:area_id])
    end
  end

  private

  def item_params
    params.require(:item).permit(:thickness, :suitstype_id, :weight, :capacity_id, :type_id).merge(area_id: params[:area_id])
  end
end
