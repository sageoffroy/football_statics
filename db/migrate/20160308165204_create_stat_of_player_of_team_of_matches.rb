class CreateStatOfPlayerOfTeamOfMatches < ActiveRecord::Migration
  def change
    create_table :stat_of_player_of_team_of_matches do |t|
      t.integer :player_of_team_of_match_id
      t.integer :stat_id
      t.integer :value
      t.time :time

      t.timestamps null: false
    end
  end
end
