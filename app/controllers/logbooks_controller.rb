class LogbooksController < ApplicationController
  
  def index
  end

  def new
    @logbook = Logbook.new
  end

  def create
    logbook = Logbook.new(logbook_params)
    if logbook.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def logbook_params
    params.require(:logbook).permit(:image, :point, :start_air, :finish_air, :max_depth, :ave_depth, :entry_time, :exit_time, :count, :text).merge(area_id: params[:area_id])
  end
end
