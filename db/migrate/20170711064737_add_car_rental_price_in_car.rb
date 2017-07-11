class AddCarRentalPriceInCar < ActiveRecord::Migration[5.1]
  def change
  	add_column :cars, :car_price, :decimal, precision: 8, scale: 2
  end
end
