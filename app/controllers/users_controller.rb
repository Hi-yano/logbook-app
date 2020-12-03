class UsersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @all = Area.find(params[:area_id])
    @item = Item.find(params[:area_id])
    @logbook = Logbook.find(params[:area_id])
    @areas = @user.areas
  end

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @areas = user.areas
  end

  def search
    @areas = Area.search(params[:keyword])
  end
end