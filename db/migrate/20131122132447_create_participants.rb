class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.String :name
      t.String :firstname
      t.date :birthday
      t.string :phone
      t.string :sexe
      t.string :type
      t.references :team
      t.references :match

      t.timestamps
    end
    add_index :participants, :team_id
    add_index :participants, :match_id
  end
end
