class Disc < ApplicationRecord
  belongs_to :item
  has_many :songs ,dependent: :destroy
  validates :disc_type, presence: true
end
