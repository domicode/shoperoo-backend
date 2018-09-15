class AddColumnToSeason < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :january, :boolean
    add_column :seasons, :february, :boolean
    add_column :seasons, :march, :boolean
    add_column :seasons, :april, :boolean
    add_column :seasons, :may, :boolean
    add_column :seasons, :june, :boolean
    add_column :seasons, :july, :boolean
    add_column :seasons, :august, :boolean
    add_column :seasons, :september, :boolean
    add_column :seasons, :october, :boolean
    add_column :seasons, :november, :boolean
    add_column :seasons, :december, :boolean
    remove_column :seasons, :from
    remove_column :seasons, :to
  end
end
