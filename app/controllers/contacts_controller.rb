class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    # redirect to 'message succesfully send page'
  end

  private

  def contact_params
    params.require(:contact).permit(:content, :email)
  end
end
