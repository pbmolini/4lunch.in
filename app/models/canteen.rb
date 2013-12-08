class Canteen < ActiveRecord::Base

	has_many :dishes
	has_many :menus

	accepts_nested_attributes_for :dishes

end
