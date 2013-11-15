class Match < ActiveRecord::Base
  attr_accessible :championship_id, :date, :gym_id, :home_score, :host_score, :team1_id, :team2_id

  belongs_to :championship
  belongs_to :gyms
  belongs_to :team, :class_name => "Team", :foreign_key => "team1_id"
  belongs_to :team, :class_name => "Team", :foreign_key => "team2_id"
  has_many :facts
  #has_many participant
end
