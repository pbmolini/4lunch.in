class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :halal
      t.boolean :burzum
      t.boolean :frozen
      t.boolean :lactose
      t.boolean :kosher
      t.boolean :gluten

      t.timestamps
    end
  end
end
