class TweetsController < ApplicationController
  def index
    @nickname = current_user.nickname
    @tweets = current_user.tweets
  end

  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new(tweet_params)
    if tweet.save
      redirect_to root_path
    else
      redirect_to new_tweet_path
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      redirect_to edit_tweet_path
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if current_user.id == tweet.user_id
      tweet.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image, :text).merge(user_id: current_user.id)
  end
end
