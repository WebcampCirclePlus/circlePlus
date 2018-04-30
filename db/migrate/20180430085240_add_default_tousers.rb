class AddDefaultTousers < ActiveRecord::Migration[5.1]
  def change
  	change_column_default :users , :quit_flg, false
  end
end
