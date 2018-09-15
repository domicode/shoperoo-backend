class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :co2_usage
      t.float :water_usage
      t.float :people_usage
      t.float :energy_usage

      t.timestamps
    end
  end
end
