class CreateCanteens < ActiveRecord::Migration
  def change
    create_table :canteens do |t|
      t.string :name
      t.string :webcam_url

      t.timestamps
    end
  end
end
