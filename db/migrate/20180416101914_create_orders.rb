class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :order_sending_id
      t.string :order_number
      t.integer :status

      t.timestamps
    end
  end
end
