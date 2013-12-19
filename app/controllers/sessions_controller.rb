class SessionsController < ApplicationController
  def new
  	@title = "S'identidier" 
  end

 def create

    timekeeper = Timekeeper.authenticate(params[:session][:email],
                             params[:session][:password])
    if timekeeper.nil?

      flash[:error] = "Combinaison Login/Mot de passe invalide."
      @titre = "S'identifier"
      redirect_to "/signin"
    else
      sign_in timekeeper
      redirect_to timekeeper
    end
  end	

  def destroy
  	
  end
end
