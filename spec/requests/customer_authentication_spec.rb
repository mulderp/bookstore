require 'spec_helper'

describe 'Authentication' do
  
  include LoginMacros

  it 'signs up new user' do
    visit root_path
    sign_up(User.prototype)
    current_path.should == '/dashboard'
    page.should have_content('My Reading List')
    click_link 'Bookstore'
    current_path.should == '/dashboard'
  end

end
