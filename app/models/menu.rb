class Menu < ActiveRecord::Base

	belongs_to :canteen
	has_many :dishes

end
