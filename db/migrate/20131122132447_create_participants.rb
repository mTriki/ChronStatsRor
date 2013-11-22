class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :firstname
      t.date :birthday
      t.string :phone
      t.string :sexe
      t.string :type

      t.timestamps
    end
  end
end
