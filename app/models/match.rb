class Match < ActiveRecord::Base
  belongs_to :team_1
  belongs_to :team_2
  belongs_to :season_of_competition
end
