class CreateDominantFoots < ActiveRecord::Migration
  def change
    create_table :dominant_foots do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
