class AreasController < ApplicationController
  def new
    @area = Area.new
  end

  def create
    area = Area.new(area_params)
    # binding.pry
    if area.valid?
      area.save
      redirect_to new_area_condition_path(area)
    else
      redirect_to new_area_path
    end
  end

  private

  def area_params
    params.require(:area).permit(:dive_day, :entry_id, :region).merge(user_id: current_user.id)
  end
end
