class ReadingListsController < ApplicationController 

  respond_to :html

  include ExhibitsHelper

  def show
    @reading_list = exhibit(ReadingList.find(params[:id]), self)
    respond_with(@reading_list)
  end

end
