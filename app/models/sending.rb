class Sending < ApplicationRecord
	validates :sending_name, presence: true
	validates :sending_code, presence: true
	validates :sending_address, presence: true
  belongs_to :user
end
