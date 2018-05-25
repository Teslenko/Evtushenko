class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # config.filter_parameters << :password
  # before_action :set_locale


end
