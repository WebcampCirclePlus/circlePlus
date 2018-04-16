class CreateDiscs < ActiveRecord::Migration[5.1]
  def change
    create_table :discs do |t|
      t.integer :disc_id
      t.integer :item_id
      t.string :disc_type

      t.timestamps
    end
  end
end
