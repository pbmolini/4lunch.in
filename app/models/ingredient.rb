class Ingredient < ActiveRecord::Base

  has_and_belongs_to_many :dishes

  def self.flags
    Ingredient.columns.collect {|c| c.name.to_sym if c.type == :boolean}.compact
  end

  def self.reduce_operator_for column_name
    case column_name
    when :frozen
      :|
    when :lactose
      :|
    when :gluten
      :|
    else
      :&
    end
  end
end
