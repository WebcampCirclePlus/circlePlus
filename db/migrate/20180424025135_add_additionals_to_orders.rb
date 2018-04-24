class AddAdditionalsToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :order_sending_str, :string
    add_column :orders, :order_sending_postal_code, :string
  end
end
