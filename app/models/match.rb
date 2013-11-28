class Match < ActiveRecord::Base
  belongs_to :championship
  belongs_to :gym
  belongs_to :team, :class_name => "Team", :foreign_key => "team1_id"
  belongs_to :team, :class_name => "Team", :foreign_key => "team2_id"
  has_many :facts
end
