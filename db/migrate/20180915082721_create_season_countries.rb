class CreateSeasonCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :season_countries do |t|
      t.references :country
      t.references :season

      t.timestamps
    end
  end
end
