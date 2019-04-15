class TweetSerializer < ActiveModel::Serializer
attributes :html, :collection_id
belongs_to :collection
end
