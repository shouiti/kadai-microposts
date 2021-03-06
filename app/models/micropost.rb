class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorite_lists

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end
