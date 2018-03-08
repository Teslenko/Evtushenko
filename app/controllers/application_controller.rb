class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # config.filter_parameters << :password
  # before_action :set_locale

  include SessionsHelper

  def after_sign_in_path_for(resource)
    # if current_user.has_attribute?(:admin)
    #   dashboard_path
    # elsif current_user.has_attribute?(:users)
    #   root_path
    # else
    #   root_path
    # end
    candidates_path
  end

  private
  def after_sign_out_path_for(resource_or_scope)
    home_path
  end

end
