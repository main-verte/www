class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  if Rails.env.production? && ENV['STAGING']
    http_basic_authenticate_with name: ENV['STAGING_BASIC_AUTH_NAME'], password: ENV['STAGING_BASIC_AUTH_PWD']
  end
end
