class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :description
      t.string :binding_key

      t.timestamps null: false
    end
  end
end
