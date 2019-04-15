class TweetSerializer < ActiveModel::Serializer
  attributes :id, :html, :collection_id
end
