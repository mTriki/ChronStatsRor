class Federation < ActiveRecord::Base

	has_many :championships 
  	has_many :members
  	has_many :gyms
end
