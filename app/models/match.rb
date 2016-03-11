class Match < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :season_of_competition
  belongs_to :team_1, :foreign_key => 'team_1_id', :class_name => 'Team'
  belongs_to :team_2, :foreign_key => 'team_2_id', :class_name => 'Team'
=======
  belongs_to :team_1
  belongs_to :team_2
  belongs_to :season_of_competition
>>>>>>> 0b555df0926b2c83562722522c976766d3a0aca6
end
