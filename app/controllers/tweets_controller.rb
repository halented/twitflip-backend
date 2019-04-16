class TweetsController < ApplicationController

  def create
  tweet = Tweet.create(html: params[:html], collection_id: params[:collection_id])
  render json: tweet
  end

  def collection_tweets
    collection = Collection.find(params[:collection_id])
    tweets = Tweet.all
    tweets = tweets.select {|tweet| tweet.collection_id == collection.id}
    render json: tweets
  end

  def destroy
    tweet = Tweet.find(params[:id])

  end
end
