class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.integer :artist_id
      t.integer :admin_id
      t.string :label
      t.text :item_img
      t.string :album_name
      t.integer :item_price_tax_free
      t.integer :stock
      t.date :on_sale_date
      t.boolean :item_show_flg

      t.timestamps
    end
  end
end
