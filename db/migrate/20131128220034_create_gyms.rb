class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :adress
      t.integer :zip
      t.string :city
      t.references :federation, index: true

      t.timestamps
    end
  end
end
