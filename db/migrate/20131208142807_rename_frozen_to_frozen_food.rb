class RenameFrozenToFrozenFood < ActiveRecord::Migration
  def change
  	remove_column :ingredients, :frozen
  	add_column :ingredients, :frozen_food, :boolean
  end
end
