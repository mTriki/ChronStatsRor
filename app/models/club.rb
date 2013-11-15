class Club < ActiveRecord::Base
  attr_accessible :adress, :city, :name, :zip

  has_many :teams
end
