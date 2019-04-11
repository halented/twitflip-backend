class User < ApplicationRecord
    has_many :collections
    has_many :tweets, through: :collections
    has_many :searches
end
