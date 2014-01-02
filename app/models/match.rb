class Match < ActiveRecord::Base
  belongs_to :championship
  belongs_to :gym
  belongs_to :team, :class_name => "Team", :foreign_key => "team_id1_id"
  belongs_to :team, :class_name => "Team", :foreign_key => "team_id2_id"
  has_many :facts

  def team1
  	Team.find_by_id(self.team_id1_id)
  end

  def team2
  	Team.find_by_id(self.team_id2_id)
  end
end
