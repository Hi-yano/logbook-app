class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.order("created_at DESK")
  end

  def new
  end

  def create
  end
end
