class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :assign_current_user

  def assign_current_user
    Rails.logger.info("---- #{current_user}")
    @current_user = exhibit(current_user)
  end
end
