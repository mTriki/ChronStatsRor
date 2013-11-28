class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :date
      t.integer :homeScore
      t.integer :awayScore
      t.references :championship, index: true
      t.references :gym, index: true
      t.references :team_id1, index: true
      t.references :team_id2, index: true

      t.timestamps
    end
  end
end
