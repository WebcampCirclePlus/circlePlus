class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :order_item_id
      t.integer :item_id
      t.integer :order_id
      t.integer :item_order_counted
      t.integer :item_order_price

      t.timestamps
    end
  end
end
