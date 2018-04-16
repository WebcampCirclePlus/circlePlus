class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :item_cart_counted

      t.timestamps
    end
  end
end
