class AdminMailer < ApplicationMailer
  default from: "kristiansoelling@gmail.com"

  def general_message(contact)
    @contact = contact
    mail(to: "kristiansoelling@gmail.com", subject: "#{@contact.email} sent you an email")
  end
end
