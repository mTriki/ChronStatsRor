class AddMyColumnToChampionship < ActiveRecord::Migration
  def change
    add_column :championships, :id_season, :integer
  end
end
