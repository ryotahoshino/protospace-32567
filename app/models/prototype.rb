class Prototype < ApplicationRecord
  validates :image, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :title, presence: true

  belongs_to :user
  has_many :comments
  has_one_attached :image
end
