class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.date :birth_date
      t.integer :weight
      t.integer :height
      t.references :nationality, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
