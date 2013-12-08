class AddCanteenIdToDishes < ActiveRecord::Migration
  def change
  	add_column :dishes, :canteen_id, :integer
  end
end
