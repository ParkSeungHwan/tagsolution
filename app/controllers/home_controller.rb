class HomeController < ApplicationController
  def index
    @user = User.all
  end
  def subscribe
    @user = User.new
    @user.email = params[:newsletter]
    @user.save
  end
end
