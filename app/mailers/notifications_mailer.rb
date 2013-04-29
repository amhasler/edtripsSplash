class NotificationsMailer < ActionMailer::Base

  default :from => "adam@edtrips.com"
  default :to => "laurakaywallendal@gmail.com"
  default :cc => "amhasler@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[edtrips.com] #{message.subject}")
  end

end