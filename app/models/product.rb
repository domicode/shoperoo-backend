class Product < ApplicationRecord
  has_many :seasons
  has_one :substitute, class_name: 'Product', foreign_key: 'substitute_id'

  def substitute
    return Product.find(substitute_id)
  end
end
