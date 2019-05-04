class ContactRequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new create]
  invisible_captcha only: [:new_contact_request]
  def new
    @contact = ContactRequest.new
  end

  def create
    @contact = ContactRequest.new(contact_params)
    @contact.save
    if @contact.save
      AdminMailer.general_message(@contact).deliver_now
      redirect_to root_path, notice: t('contact-form.notice')
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact_request).permit(:content, :email)
  end
end
