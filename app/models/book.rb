class Book < ActiveRecord::Base

  belongs_to :reading_list

  attr_accessible :author, :title, :publisher

  
end
