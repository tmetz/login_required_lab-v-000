class SessionsController < ApplicationController

  def new
  end

  def create
    if (!params[:current_user] || params[:current_user].empty?)
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:current_user] = params[:current_user]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :current_user
  end
  
end
