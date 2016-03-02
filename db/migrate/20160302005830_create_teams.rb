class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :initials
      t.date :foundation
      t.integer :members
      t.references :stadium, index: true, foreign_key: true
      t.string :shield

      t.timestamps null: false
    end
  end
end
