class ReadingList < ActiveRecord::Base

  has_many :books

  attr_accessible :description, :end, :name, :start
end
