class CreateChampionships < ActiveRecord::Migration
  def change
    create_table :championships do |t|
      t.string :name
      t.references :federation, index: true
      t.references :season, index: true

      t.timestamps
    end
  end
end
