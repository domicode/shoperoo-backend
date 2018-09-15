class RemoveColumFromProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :substitute_id
  end
end
