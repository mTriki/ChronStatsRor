class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :adress
      t.integer :zip
      t.integer :city
      t.integer :federation_id

      t.timestamps
    end
  end
end
