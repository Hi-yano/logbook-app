class ConditionsController < ApplicationController
  def new
    @condition = Condition.new
  end

  def create
    condition = Condition.new(condition_params)
    if condition.valid?
      condition.save
      redirect_to new_area_item_path(params[:area_id])
    else
      redirect_to new_area_condition_path
    end
  end

  private

  def condition_params
    params.require(:condition).permit(:weather, :wind, :wave, :tide_id, :temperature, :water_temperature).merge(area_id: params[:area_id])
  end
end
