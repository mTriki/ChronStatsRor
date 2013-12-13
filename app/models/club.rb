class Club < ActiveRecord::Base
	has_many :timekeeper

	attr_accessible :name, :adress, :zip, :city
end
