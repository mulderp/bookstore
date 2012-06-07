class Authentication::RegistrationsController < Devise::RegistrationsController

  respond_to :html
  append_view_path 'app/views/authentication'

  def edit
    1
  end


end
