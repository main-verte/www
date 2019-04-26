class ContactRequestsController < ApplicationController
  def new
    @contact = ContactRequest.new
  end

  def create
    @contact = ContactRequest.new(contact_params)
    @contact.save
    if @contact.save
      AdminMailer.general_message(@contact).deliver_now
      redirect_to root_path, notice: "Thanks for your message"
     else
       render :new
    end
  end

  private

  def contact_params
    params.require(:contact_request).permit(:content, :email)
  end
end
