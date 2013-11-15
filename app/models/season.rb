class Season < ActiveRecord::Base
  attr_accessible :begin, :end, :name

  has_many :championship
end
