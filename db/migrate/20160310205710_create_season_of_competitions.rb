class CreateSeasonOfCompetitions < ActiveRecord::Migration
  def change
    create_table :season_of_competitions do |t|
      t.references :season, index: true, foreign_key: true
      t.references :competition, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
