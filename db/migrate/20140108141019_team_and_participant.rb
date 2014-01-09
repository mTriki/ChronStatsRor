class TeamAndParticipant < ActiveRecord::Migration
  def change
  	  create_table :team_participant do |t|
      t.belongs_to :team
      t.belongs_to :participant
      t.string :type
  end
  end
end
