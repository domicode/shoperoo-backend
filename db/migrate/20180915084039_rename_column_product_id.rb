class RenameColumnProductId < ActiveRecord::Migration[5.1]
  def change
    rename_column :seasons, :product_id_id, :product_id
  end
end
