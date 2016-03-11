class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :play_date
      t.references :team_1, index: true, foreign_key: true
      t.references :team_2, index: true, foreign_key: true
      t.references :season_of_competition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
