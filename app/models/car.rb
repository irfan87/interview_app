class Car < ApplicationRecord
	validates :car_name, presence: true
	validates :car_type, presence: true
	
	validates :car_price, presence: true

	belongs_to :owner
end
