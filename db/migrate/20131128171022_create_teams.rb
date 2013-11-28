class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :homeColor
      t.string :awayColor
      t.references :club, index: true

      t.timestamps
    end
  end
end
