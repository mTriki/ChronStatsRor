class CreateParticipantTeams < ActiveRecord::Migration
  def change
    create_table :participant_teams do |t|
      t.integer :team_id
      t.integer :participant_id
      t.string :type

      t.timestamps
    end
  end
end
