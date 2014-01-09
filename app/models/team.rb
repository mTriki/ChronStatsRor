class Team < ActiveRecord::Base
  belongs_to :club
  has_many :matches

  has_many :participantTeams
  has_many :participants, :through => :participantTeams

  attr_accessible :name, :homeColor, :awayColor, :club_id

  def players 
  	self.participants.find(:all, :conditions => {:type => 'Player'})
  end

 def display_name
    "#{name} -  #{club.name}"
  end
end
