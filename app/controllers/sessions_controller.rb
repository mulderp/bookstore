class SessionsController < Devise::SessionsController

  respond_to :html
  append_view_path 'app/views/devise'

  include DisplayCase::ExhibitsHelper


end
