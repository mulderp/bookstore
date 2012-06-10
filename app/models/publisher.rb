class Publisher < ActiveRecord::Base

  has_many :employees, :class_name => User, as: :organization

  def self.prototype(attrs)
    publisher = self.new
    publisher.name = attrs[:name]
    publisher
  end


end
