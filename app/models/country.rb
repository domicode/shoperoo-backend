class Country < ApplicationRecord
  has_many :season_countries
  has_many :seasons, through: :season_countries
end
