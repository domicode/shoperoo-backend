class CreateSubstitutes < ActiveRecord::Migration[5.1]
  def change
    create_table :substitutes do |t|
      t.references :product, foreign_key: true
      t.integer :substitute_id

      t.timestamps
    end
  end
end
