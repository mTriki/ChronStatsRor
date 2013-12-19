class Timekeeper < ActiveRecord::Base
  belongs_to :club
#attr_accessor :password
  attr_accessible :login, :password, :password_confirmation



  # Crée automatique l'attribut virtuel 'password_confirmation'.
  validates :password, 	:presence     => true,
                       	:confirmation => true,
                       	:length       => { :within => 6..40 }

  validates :login,  	:presence => true,
                  		:length   => { :maximum => 50 }

  before_save :encrypt_password

  def has_password?(password)
    encrypt_password == encrypt(password)
  end

  def self.authenticate(login,password)
  	user = find_by_login(login)
  	return nil if user.nil?
  	return user if user.has_password?(password)
  end

  def encrypt(string)
    Digest::SHA2.hexdigest(string)
  end

  private
  	def encrypt_password 
  		self.password = encrypt(password)
  	end


end
