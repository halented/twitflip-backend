class User < ApplicationRecord
  has_many :collections
  has_many :tweets, through: :collections
end
