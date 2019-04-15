class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id
  has_many :tweets
end
