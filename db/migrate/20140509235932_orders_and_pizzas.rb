class OrdersAndPizzas < ActiveRecord::Migration
  def change
    create_join_table :orders, :pizzas, column_options: { null: true } do |t|
      t.index :pizza_id
      t.index :order_id
      t.index [:pizza_id, :order_id]
    end
  end
end
