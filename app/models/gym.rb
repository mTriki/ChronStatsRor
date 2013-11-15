class Gym < ActiveRecord::Base
  attr_accessible :adress, :city, :federation_id, :name, :zip

  belongs_to :federation
  has_many :matches
end
