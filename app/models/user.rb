class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  validates :name_kana, presence: true,
                 format: {
                   with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                   message: "全角空白・カタカナのみで入力して下さい"
                 }

  validates :user_name, presence: true
  validates :name_kanji, presence: true
  validates :name_kana, presence: true
  validates :postal_code, presence: true, length: { is: 7}
  validates :address, presence: true
  validates :phone_number, presence: true

  has_many :items
  has_many :cart_items
  has_many :orders
  has_many :sendings
end
