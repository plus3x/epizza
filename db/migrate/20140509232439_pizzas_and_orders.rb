class PizzasAndOrders < ActiveRecord::Migration
  def change
    create_join_table :pizza, :order, column_options: { null: true } do |t|
      t.index :pizza_id
      t.index :order_id
      t.index [:pizza_id, :order_id]
    end
  end
end