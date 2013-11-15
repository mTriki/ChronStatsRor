class Federation < ActiveRecord::Base
  attr_accessible :logo, :name

  has_many :championships 
  has_many :members
  has_many :gyms
end
