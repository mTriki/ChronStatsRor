class AddTypeToParticipantsTeams < ActiveRecord::Migration
  def change
    add_column :participants_teams, :type, :string
  end
end
