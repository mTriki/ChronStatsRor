class Championship < ActiveRecord::Base
  	belongs_to :federation
  	belongs_to :season
    has_many :matchs

    attr_accessible :name, :federation_id, :season_id
end
