class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about]
  def home
    @contact = ContactRequest.new
  end

  def about; end

  def components; end
end
