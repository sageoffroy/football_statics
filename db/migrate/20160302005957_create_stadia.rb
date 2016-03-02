class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :nickname
      t.date :foundation
      t.integer :capacity
      t.string :picture

      t.timestamps null: false
    end
  end
end
