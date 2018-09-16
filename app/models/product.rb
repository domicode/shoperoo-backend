class Product < ApplicationRecord
  has_many :seasons
  has_many :substitutes, class_name: 'Product', foreign_key: 'substitute_id'

  def has_season?
    month = Date.today.strftime("%B").downcase
    seasons.where(month, true).present?
  end

  def co2_score
    if co2_usage.present?
      100 - co2_usage * 10
    else
      0
    end
  end

  def water_score
    if water_usage.present?
      100 - water_usage
    else
      0
    end
  end

  def people_score
    if people_usage.present?
      100 - people_usage
    else
      0
    end
  end

  def energy_score
    if energy_usage.present?
      100 - energy_usage
    else
      0
    end
  end

  def total_score
    co2_score + water_score + people_score + energy_score
  end
end
