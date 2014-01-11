class AddRefereeToMatches < ActiveRecord::Migration
  def change
    add_reference :matches, :referee, index: true
  end
end
