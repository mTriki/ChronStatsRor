class Federation < ActiveRecord::Base

	has_many :championships 
  	has_many :members
  	has_many :gyms

  	attr_accessible :name
end
