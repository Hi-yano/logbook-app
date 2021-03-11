class LogbooksController < ApplicationController
  def index
    @tweets = Tweet.all.order('created_at DESC')
    @today = Date.today.strftime('%Y年%m月%d日')
  end

  def new
    @logbook = Logbook.new
  end

  def create
    logbook = Logbook.new(logbook_params)
    if logbook.save
      redirect_to user_path(current_user.id)
    else
      redirect_to new_area_logbook_path
    end
  end

  def show
  end

  private

  def logbook_params
    params.require(:logbook).permit(:image, :point, :start_air, :finish_air, :max_depth, :ave_depth, :entry_time, :exit_time, :count, :text).merge(area_id: params[:area_id])
  end
end
