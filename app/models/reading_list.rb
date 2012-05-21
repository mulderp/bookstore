class ReadingList < ActiveRecord::Base

  has_many :books

  scope :without_current, lambda{|reading_list| where("id != ?", reading_list.id)} 

  attr_accessible :description, :end, :name, :start
end
