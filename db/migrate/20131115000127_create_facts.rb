class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.time :time
      t.integer :match_id
      t.string :type

      t.timestamps
    end
  end
end
