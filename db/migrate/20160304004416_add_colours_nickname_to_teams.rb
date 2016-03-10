class AddColoursNicknameToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :colours1, :string
    add_column :teams, :colours2, :string
    add_column :teams, :nickname, :string
  end
end
