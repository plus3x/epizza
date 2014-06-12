class AddNumToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :num, :integer
  end
end
