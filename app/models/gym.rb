class Gym < ActiveRecord::Base
  	belongs_to :federation
    has_many :matches
    
end
