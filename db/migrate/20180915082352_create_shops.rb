class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :location
      t.float :people_usage
      t.float :sustainability_score

      t.timestamps
    end
  end
end
