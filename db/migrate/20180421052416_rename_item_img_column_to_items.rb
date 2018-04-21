class RenameItemImgColumnToItems < ActiveRecord::Migration[5.1]
  def change
  	rename_column :items, :item_img, :item_img_id
  end
end
