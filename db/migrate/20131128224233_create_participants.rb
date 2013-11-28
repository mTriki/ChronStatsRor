class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :firstname
      t.date :birthday
      t.string :phone
      t.boolean :sexe
      t.string :type
      t.integer :noDossard
      t.integer :no_license
      t.date :dateQualification

      t.timestamps
    end
  end
end
