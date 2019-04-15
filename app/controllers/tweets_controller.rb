class TweetsController < ApplicationController

  def create
    tweet = Tweet.create(tweet_params(params))
    render json: tweet
  end

  def collection_tweets
    collection = Collection.find(params[:collection_id])
    tweets = Tweet.all
    tweets = tweets.select {|tweet| tweet.collection_id == collection.id}
    render json: tweets
  end

  private

  def tweet_params(params)
    params.require(:tweet).permit(:html, :collection_id)
  end
end
