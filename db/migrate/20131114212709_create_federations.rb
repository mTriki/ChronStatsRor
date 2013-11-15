class CreateFederations < ActiveRecord::Migration
  def change
    create_table :federations do |t|
      t.string :name
      t.string :logo

      t.timestamps
    end
  end
end
