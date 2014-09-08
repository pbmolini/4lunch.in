class AddSlugToUsers < ActiveRecord::Migration
  def change
    add_column :canteens, :slug, :string, unique: true

    Canteen.find_each(&:save)
  end
end
