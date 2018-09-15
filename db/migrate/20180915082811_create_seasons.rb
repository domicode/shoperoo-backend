class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.date :from
      t.date :to
      t.references :product_id

      t.timestamps
    end
  end
end
