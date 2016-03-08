class PlayerOfTeamMatch < ActiveRecord::Base
  belongs_to :player_of_team
  belongs_to :match
end
