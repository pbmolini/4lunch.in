class Menu < ActiveRecord::Base

	belongs_to :canteen
	has_many :dishes

	accepts_nested_attributes_for :dishes

end
