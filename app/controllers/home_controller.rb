class HomeController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
    @user_name = @user ? @user.name : "Guest"
  end
end
