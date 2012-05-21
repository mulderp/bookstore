class Api::V1::ReadingListsController < Api::V1::BaseController

  respond_to :json, :csv

  include ExhibitsHelper

  def show
    @books = exhibit(ReadingList.find(params[:id]), self)
    respond_with(@books)
  end

end
