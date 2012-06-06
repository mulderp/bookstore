class Users::RegistrationsController < Devise::RegistrationsController

  respond_to :html
  append_view_path 'app/views/users'


end
