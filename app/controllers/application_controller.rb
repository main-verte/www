class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_locale

  def set_locale
    I18n.locale = params.fetch(:locale, I18n.default_locale).to_sym
  end

  def default_url_options
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end

  if Rails.env.production? && ENV['STAGING']
    http_basic_authenticate_with name: ENV['STAGING_BASIC_AUTH_NAME'], password: ENV['STAGING_BASIC_AUTH_PWD']
  end
end
