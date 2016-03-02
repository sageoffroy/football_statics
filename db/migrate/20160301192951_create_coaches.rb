class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.references :person, index: true, foreign_key: true
      t.date :debut_coach
      t.timestamps null: false
    end
  end
end
