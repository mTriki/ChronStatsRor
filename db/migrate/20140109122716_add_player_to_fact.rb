class AddPlayerToFact < ActiveRecord::Migration
  def change
    add_reference :facts, :player, index: true
  end
end
