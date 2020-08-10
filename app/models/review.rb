class Review < ApplicationRecord
  belongs_to :user
  belongs_to :ramen_shop
  validates :score, presence: true
end
