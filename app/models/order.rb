class Order < ApplicationRecord
  belongs_to :user
  has_many :items, through: :order_items
  has_many :order_items

  validates :order_sending_str, presence: true
  validates :order_sending_postal_code, presence: true, length: { is: 7 }
  enum status: {準備中: 1, 発送中: 2, 発送完了: 3}
end
