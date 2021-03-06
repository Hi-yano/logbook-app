class AreasController < ApplicationController
  def new
    @area = Area.new
  end

  def create
    area = Area.new(area_params)
    if area.valid?
      area.save
      redirect_to new_area_condition_path(area)
    else
      redirect_to new_area_path
    end
  end

  def destroy
    area = Area.find(params[:id])
    if current_user.id == area.user_id
      area.destroy
      redirect_to user_path(current_user.id)
    else
      render :index
    end
  end

  private

  def area_params
    params.require(:area).permit(:dive_day, :entry_id, :region).merge(user_id: current_user.id)
  end
end
