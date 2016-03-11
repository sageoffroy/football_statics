class CreateCompetitionTypes < ActiveRecord::Migration
  def change
    create_table :competition_types do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
