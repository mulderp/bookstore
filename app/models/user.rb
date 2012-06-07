class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :login

  def self.prototype
    user = self.new
    user.first_name = "Peter"
    user.last_name = "Miller"
    user.email = "peter@tester.com"
    user.password = "test123"
    user
  end

  def to_param
    login
  end
end
