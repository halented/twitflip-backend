class SearchController < ApplicationController

    def new
        json = {}
        tweets = []
        if params["negative_attitude"]
            $client.search("#{params["search_terms"]} :(", result_type: "recent").take(5).collect do |tweet|
            tweets << "#{tweet.url}"
            end
        elsif params["positive_attitude"]
            $client.search("#{params["search_terms"]} :)", result_type: "recent").take(5).collect do |tweet|
            tweets << "#{tweet.url}"
            end
        else
            $client.search("#{params["search_terms"]}", result_type: "recent").take(5).collect do |tweet|
            tweets << "#{tweet.url}"
            end
        end

        tweets.map! do |tweetUrl|
            tweet = HTTParty.get("https://publish.twitter.com/oembed?url="+tweetUrl)
            tweet["html"]
        end
        json['tweets']=tweets
        render json: json
    end

end
