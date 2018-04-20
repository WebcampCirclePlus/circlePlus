class Order < ApplicationRecord
  belongs_to :user
  has_many :items, through: :order_items
  has_many :order_items

  enum status: {準備中: 1, 発送中: 2, 発送完了: 3}

end
