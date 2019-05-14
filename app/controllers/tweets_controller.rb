class TweetsController < ApplicationController
  before_action :authenticate_user!, except: %i[ index ]

  def new
    @tweet = Tweet.new()
  end

  def show
    @tweet = Tweet.find(params[:id])
    @user = @tweet.user
    @favorites = @user.favorite_tweets
    @comments = @tweet.comments
    @comment = current_user.comments.build
  end

  def index
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    @tweet.save
    redirect_to tweets_path
  end

  private
    def tweet_params
      params.require(:tweet).permit(:body)
    end
end
