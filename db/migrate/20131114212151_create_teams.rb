class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :home_color
      t.string :away_color

      t.timestamps
    end
  end
end
