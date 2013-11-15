class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :date
      t.integer :home_score
      t.integer :host_score
      t.integer :championship_id
      t.integer :gym_id
      t.integer :team1_id
      t.integer :team2_id

      t.timestamps
    end
  end
end
