class Dish < ActiveRecord::Base

	belongs_to :menu
	has_and_belongs_to_many :ingredients

end