class ReadingListsController < ApplicationController 

  respond_to :html

  include DisplayCase::ExhibitsHelper

  def show
    @reading_list = exhibit(ReadingList.find(params[:id]), self)
    respond_with(@reading_list)
  end

  def index
    @reading_lists = exhibit(ReadingList.all)
    respond_with(@reading_lists)
  end

end
