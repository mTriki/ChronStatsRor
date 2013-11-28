class Championship < ActiveRecord::Base
  	belongs_to :federation
  	belongs_to :season
    has_many :matchs
end
