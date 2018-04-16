class CreateSendings < ActiveRecord::Migration[5.1]
  def change
    create_table :sendings do |t|
      t.integer :user_id
      t.boolean :sending_show_flg
      t.string :sending_name
      t.string :sending_code
      t.string :sending_address

      t.timestamps
    end
  end
end
