class SeasonOfCompetition < ActiveRecord::Base
  belongs_to :season
  belongs_to :competition
end
