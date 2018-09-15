class Season < ApplicationRecord
  has_many :season_countries
  has_many :countries, through: :season_countries
  belongs_to :product
end
