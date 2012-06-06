class ReadingListsController < ApplicationController 

  respond_to :html

  def show
    @reading_list = exhibit(ReadingList.find(params[:id]), self)
    respond_with(@reading_list)
  end

  def index
    @books = exhibit(Book.all)
    @reading_lists = exhibit(ReadingList.all)
    respond_with(@reading_lists, @books)
  end

end
