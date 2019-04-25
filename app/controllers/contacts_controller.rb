class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    if @contact.save
      AdminMailer.general_message(@contact).deliver_now
      redirect_to root_path, notice: "Thanks for your message"
     else
       render :new
    end
  end

  def thanks
  end

  private

  def contact_params
    params.require(:contact).permit(:content, :email)
  end
end
