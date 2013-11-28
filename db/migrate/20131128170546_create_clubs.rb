class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :adress
      t.integer :zip
      t.string :city

      t.timestamps
    end
  end
end
