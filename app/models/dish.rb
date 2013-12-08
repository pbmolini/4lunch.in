class Dish < ActiveRecord::Base

	belongs_to :canteen
	belongs_to :menu
	has_and_belongs_to_many :ingredients

	TYPES = [n_("Hors d'oeuvre","Hors d'oeuvre",1),n_('Entrée','Entrées',1),n_('Second Course','Second Courses',1),n_('Main','Main',1),n_('Side','Side',1),n_('Dessert','Desserts',1),n_('Beverage','Beverages',1)].freeze
	#TYPES = %w{_('Antipasto'),_('Primo'),_('Secondo'),_('Piatto Unico'),_('Contorno'),_('Dessert'),_('Bevanda')}

end