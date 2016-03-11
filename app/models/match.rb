class Match < ActiveRecord::Base
  belongs_to :season_of_competition
  belongs_to :team_1, :foreign_key => 'team_1_id', :class_name => 'Team'
  belongs_to :team_2, :foreign_key => 'team_2_id', :class_name => 'Team'

end
