class CollectionsController < ApplicationController
    
    def index
        whatever = {}
        twits = []
        $client.search("dogs", result_type: "recent").take(5).collect do |tweet| 
            twits << "#{tweet.url}"
        end
        
        twits.map! do |tweetUrl|
            HTTParty.get("https://publish.twitter.com/oembed?url="+tweetUrl)
        end
        whatever['tweet']=twits
        render json: whatever
    end

end
