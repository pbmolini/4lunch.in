module IngredientsHelper

	def ingredient_labels dish
		capture do
			Ingredient.columns.collect {|c| c.name if c.type == :boolean}.compact.each do |att|
				concat(content_tag(:span, att, class: 'label label-info')) if dish.ingredients.map {|i| i.send("#{att}?") }.reduce(:&)
				concat ' '
			end
		end
	end
end
