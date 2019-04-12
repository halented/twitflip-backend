class SearchController < ApplicationController

    def new

        whatever = {}
        twits = []
        if params['negative_attitude']
        $client.search("#{params['search_terms']} :(", result_type: "popular").take(5).collect do |tweet| 
            twits << "#{tweet.url}"
            end
        elsif params['positive_attitude']
            $client.search("#{params['search_terms']} :)", result_type: "popular").take(5).collect do |tweet| 
            twits << "#{tweet.url}"
            end
        else 
            $client.search("#{params['search_terms']}", result_type: "popular").take(5).collect do |tweet| 
            twits << "#{tweet.url}"
            end
        end
        
        twits.map! do |tweetUrl|
            HTTParty.get("https://publish.twitter.com/oembed?url="+tweetUrl)
        end
        whatever['tweet']=twits
        render json: whatever
    end

end
