class Comment < ApplicationRecord
  belongs_to :post
  validates :comments, presence: { message: "can not be blank" }
end