class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :firstname
      t.string :login
      t.string :phone
      t.string :email
      t.string :password
      t.integer :federation_id

      t.timestamps
    end
  end
end
