#tweets_controller.rb (route vs controller = route vs actions)
class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end
  
  def show
    @tweet = Tweet.find(params[:id])
  end
  
  def create
    @tweet = Tweet.new(params[:tweet])
    if @tweet.save
      redirect_to @tweet
    else
      render "new"
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_url
  end


 end



