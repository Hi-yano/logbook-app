class UsersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @all = Area.find(params[:area_id])
    @areas = @user.areas
  end

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @areas = user.areas
  end

  def search
    if params[:year].present? && params[:month].present?
      keyword = "#{params[:year]}-#{params[:month]}"
      @areas = Area.search(keyword, 1)
    elsif params[:year] == ''
      keyword = params[:month].to_s
      @areas = Area.search(keyword, 2)
    else
      keyword = params[:year].to_s
      @areas = Area.search(keyword, 3)
    end
  end
end
