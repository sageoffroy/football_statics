class StatOfPlayerOfTeamOfMatch < ActiveRecord::Base
	belongs_to :player_of_team_of_match
	belongs_to :stat
end
