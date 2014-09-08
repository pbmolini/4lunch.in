class Canteen < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

	has_many :dishes
	has_many :menus

	accepts_nested_attributes_for :dishes

end
