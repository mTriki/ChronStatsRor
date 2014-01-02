class Fact < ActiveRecord::Base
	attr_accessible :time, :type, :match_id
	self.inheritance_column = :type 

end
