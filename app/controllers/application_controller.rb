class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper


  def authenticate
     deny_access unless signed_in?
  end
  def deny_access
   	redirect_to signin_path, :notice => "Merci de vous identifier pour rejoindre cette page."
  end
end
