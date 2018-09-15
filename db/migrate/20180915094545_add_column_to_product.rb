class AddColumnToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :substitute_id, :integer
  end
end
