class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :firstname
      t.string :login
      t.string :phone
      t.string :email
      t.string :password
      t.references :federation, index: true

      t.timestamps
    end
  end
end
