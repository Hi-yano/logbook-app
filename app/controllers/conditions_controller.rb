class ConditionsController < ApplicationController

  def new
    @condition = Condition.new
  end

  def create
    condition = Condition.new(condition_params)
    # binding.pry
    if condition.valid?
      condition.save
      redirect_to new_equipment_path
    else
      redirect_to new_area_path
    end
  end

  private

  def condition_params
    params.require(:condition).permit(:weather, :wind, :wave, :tide_id, :temperature, :water_temperature).merge(area_id: params[:area_id])
  end
end

