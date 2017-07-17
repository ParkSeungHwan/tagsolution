class HomeController < ApplicationController
  def index
    @user = User.all
  end
  def subscribe
    @user = User.new
    @user.email = params[:newsletter]
    @user.save
  end
  def submit
    @msg = Msg.new
    @msg.name = params[:name]
    @msg.email = params[:email]
    @msg.content = params[:message]
    @msg.save
		ModelMailer.new_record_notification(@msg).deliver
    redirect_to:back
  end
end
