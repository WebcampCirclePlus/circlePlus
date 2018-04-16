class Item < ApplicationRecord
  has_many :discs
  has_many :cart_items
  has_many :order_items

  belongs_to :genre
  belongs_to :artist
  belongs_to :admin
end
