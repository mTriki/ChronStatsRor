class CreateChampionships < ActiveRecord::Migration
  def change
    create_table :championships do |t|
      t.string :name
      t.integer :season_id
      t.integer :federation_id

      t.timestamps
    end
  end
end
