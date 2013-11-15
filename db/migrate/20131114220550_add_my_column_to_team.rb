class AddMyColumnToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :id_club, :integer
  end
end
