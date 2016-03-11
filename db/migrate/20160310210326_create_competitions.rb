class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.references :competition_type, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
