class CreateTimekeepers < ActiveRecord::Migration
  def change
    create_table :timekeepers do |t|
      t.string :login
      t.string :password
      t.references :club, index: true

      t.timestamps
    end
  end
end
