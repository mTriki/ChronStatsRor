class Timekeeper < ActiveRecord::Base
  belongs_to :club
  has_secure_password

  attr_accessible :login, :password, :password_confirmation, :club_id

  validates :login,   :presence => true,
                      :length   => { :maximum => 50 }

end
