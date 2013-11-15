class Championship < ActiveRecord::Base
  attr_accessible :federation_id, :name, :season_id

  belongs_to :federation
  belongs_to :season
  has_many :matchs
end
