class Users::SessionsController < Devise::SessionsController

  respond_to :html
  append_view_path 'app/views/users'


end
