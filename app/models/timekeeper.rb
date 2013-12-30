class Timekeeper < ActiveRecord::Base
  belongs_to :club

  attr_accessible :login, :password, :password_confirmation



  # Crée automatique l'attribut virtuel 'password_confirmation'.
  validates :password, 	:presence     => true,
                       	:confirmation => true,
                       	:length       => { :within => 6..40 }

  validates :login,  	:presence => true,
                  		:length   => { :maximum => 50 }

  def self.authenticate(login, password)
  	user = find_by_login(login)
  	return nil if user.nil?
  	return user if user.password == encrypt(password)
  end

  def self.authenticate_with_encrypted_password(login, password)
    user = find_by_login(login)
    return nil if user.nil?
    return user if user.password == password
  end

  private
  
    def self.encrypt(string)
      Digest::SHA2.hexdigest(string)
    end
end
