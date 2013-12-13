module IngredientsHelper

	def ingredient_labels dish
		capture do
			Ingredient.flags.each do |att|
				concat(content_tag(:span, att, class: 'label label-info')) if dish.send("is_#{att}?")
				concat ' '
			end
		end
	end
end
