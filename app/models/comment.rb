class Comment < ApplicationRecord
  has_many :likes, as: :imageable
  belongs_to :post
  belongs_to :user
end
