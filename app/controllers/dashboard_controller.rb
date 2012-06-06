class DashboardController < ApplicationController

  respond_to :html
  
  def index
    @books = exhibit(Book.all)
    @reading_lists = exhibit(ReadingList.all)
    respond_with(@reading_lists, @books)
  end

end
