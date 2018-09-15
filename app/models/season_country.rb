class SeasonCountry < ApplicationRecord
  belongs_to :season
  belongs_to :country
end
