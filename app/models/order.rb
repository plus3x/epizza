class Order < ActiveRecord::Base
  has_and_belongs_to_many :pizzas
  accepts_nested_attributes_for :pizzas, allow_destroy: true
  before_destroy { pizzas.clear }
end