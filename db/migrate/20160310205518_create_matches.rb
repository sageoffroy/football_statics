class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :play_date
      t.integer :team_1_id
      t.integer :team_2_id
      t.references :season_of_competition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
