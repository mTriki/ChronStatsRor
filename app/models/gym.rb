class Gym < ActiveRecord::Base
  	belongs_to :federation
    has_many :matches

    attr_accessible :name, :adress, :zip, :city, :federation_id
end
