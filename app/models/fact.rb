class Fact < ActiveRecord::Base
	attr_accessible :time, :type, :match_id, :player_id
	belongs_to :match
	belongs_to :player
	
	self.inheritance_column = :type 
end
