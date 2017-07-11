class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :car_type
      t.string :car_name
      t.string :car_years

      t.timestamps
    end
  end
end
