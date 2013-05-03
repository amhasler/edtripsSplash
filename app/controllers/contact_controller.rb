class ContactController < ApplicationController

  def new
    @message = Message.new
    @email = Email.new
  end

  def create

    @message = Message.new(params[:message])
    @email = Email.new(params[:email])
    

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      @email.save
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

end