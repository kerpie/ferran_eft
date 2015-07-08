class SessionController < ApplicationController
  def start
    if session[:user_accepted]
      redirect_to opinions_path
    end
  end

  def create
  	code = params[:code]
  	if(code == "4dr14157h3b357")
  		session[:user_accepted] = true
  	end
    redirect_to root_path
  end

  def destroy
  	session[:user_accepted] = false
  	redirect_to root_path
  end

end