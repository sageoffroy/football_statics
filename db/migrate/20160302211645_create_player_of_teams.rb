class CreatePlayerOfTeams < ActiveRecord::Migration
  def change
    create_table :player_of_teams do |t|
      t.references :player, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.date :contract_start
      t.date :contract_end
      t.integer :shirt_number

      t.timestamps null: false
    end
  end
end
