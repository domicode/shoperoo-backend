class Product < ApplicationRecord
  has_many :seasons
  has_one :substitute, class_name: 'Product', foreign_key: 'substitute_id'

  def substitute
    if substitute_id.present?
      Product.find(substitute_id)
    end
  end

  def has_season?
    month = Date.today.strftime("%B").downcase
    seasons.where(month, true).present?
  end
end
