class SessionsController < ApplicationController
  def new
  	@title = "S'identidier"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: "Vous devez vous identifier" }
    end
  end


 def create

    if request.format.json?
      timekeeper = Timekeeper.authenticate(params[:login],params[:password])
      logger.debug "fuck momo ===> #{params[:password]}"
    else

      timekeeper = Timekeeper.authenticate(params[:session][:login],
                                           params[:session][:password])
    end

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
