class SessionsController < ApplicationController
  def new
  	@title = "S'identidier" 
  end

 def create
    timekeeper = Timekeeper.authenticate(params[:session][:login],
                             params[:session][:password])
    if timekeeper.nil?
      flash[:error] = "Combinaison Login/Mot de passe invalide."
      redirect_to "/signin"
    else
      sign_in timekeeper
      redirect_to timekeeper
    end
  end	

  def destroy
  	sign_out
    redirect_to "/signin"
  end
end
