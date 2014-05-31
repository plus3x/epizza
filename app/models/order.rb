class Order < ActiveRecord::Base
  has_and_belongs_to_many :pizzas
  before_destroy { pizzas.clear }
end