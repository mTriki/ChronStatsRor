class Participant < ActiveRecord::Base
  belongs_to :team
  belongs_to :match
  attr_accessible :birthday, :firstname, :name, :phone, :sexe, :type
end
