class Item < ApplicationRecord
  attachment :item_img

  has_many :discs

  has_many :users
  # , through: :cart_items
  has_many :cart_items
  # accepts_nested_attributes_for :cart_items

  has_many :orders
   # , through: :order_items
  has_many :order_items
  # accepts_nested_attributes_for :order_items

  belongs_to :genre
  belongs_to :artist
  belongs_to :admin
end
