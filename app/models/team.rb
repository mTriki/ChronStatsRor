class Team < ActiveRecord::Base
  belongs_to :club
  has_many :matches
  has_and_belongs_to_many :participant

  attr_accessible :name, :homeColor, :awayColor, :club_id
end
