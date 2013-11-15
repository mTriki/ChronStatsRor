class Team < ActiveRecord::Base
  attr_accessible :away_color, :home_color, :name , :id_club
  belongs_to :club
  has_many :matches
  #has_many participant
end
