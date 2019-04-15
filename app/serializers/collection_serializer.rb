class CollectionSerializer < ActiveModel::Serializer
attributes :name, :user_id
belongs_to :user
end
