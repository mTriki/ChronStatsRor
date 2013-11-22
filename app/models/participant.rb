class Participant < ActiveRecord::Base
  has_and_belongs_to_many :team
  has_and_belongs_to_many :match
  attr_accessible :birthday, :firstname, :name, :phone, :sexe, :type
end
