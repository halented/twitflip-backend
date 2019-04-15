class UserSerializer < ActiveModel::Serializer
attributes :username
has_many :collections
has_many :tweets, through: :collections
end
