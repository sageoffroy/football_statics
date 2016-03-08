class CreatePlayerOfTeamMatches < ActiveRecord::Migration
  def change
    create_table :player_of_team_matches do |t|
      t.references :player_of_team, index: true, foreign_key: true
      t.references :match, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
