class AddOwnerIdToCars < ActiveRecord::Migration[5.1]
  def change
    add_reference :cars, :owner, foreign_key: true
  end
end
