class Member < ActiveRecord::Base
  attr_accessible :email, :federation_id, :firstname, :login, :name, :password, :phone

  belongs_to :federation
end
