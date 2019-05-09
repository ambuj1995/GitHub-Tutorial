class Post < ApplicationRecord
  has_many :comments
  has_many :likes, as: :imageable
  belongs_to :user
end
