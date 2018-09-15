class AddSubstitionInfoToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :product_substitution_teaser, :text
    add_column :products, :product_substitution_text, :text
  end
end
