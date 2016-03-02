class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :person, index: true, foreign_key: true
      t.references :dominant_foot, index: true, foreign_key: true
      t.date :debut_player
      t.text :position

      t.timestamps null: false
    end
  end
end
