class ParticipantsTeams < ActiveRecord::Migration
	create_table :participants_teams, :id => false do |t|
  		t.references :participants, :null => false
  		t.references :teams, :null => false
	end
end
