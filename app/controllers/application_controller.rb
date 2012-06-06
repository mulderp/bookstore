class ApplicationController < ActionController::Base
  protect_from_forgery

  include DisplayCase::ExhibitsHelper

  before_filter :assign_current_user

  def assign_current_user
    @current_user = exhibit(current_user)
  end
end
