class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :dishes_ingredients do |t|
    	t.integer :dish_id
    	t.integer :ingredient_id
    end

    add_column :menus, :canteen_id, :integer
  end
end
