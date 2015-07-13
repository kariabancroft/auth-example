class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to dashboard_path(@user)
    else
      flash.now[:error] = "Try again!"
      render 'new'
    end
  end

  def destroy
  end
end
