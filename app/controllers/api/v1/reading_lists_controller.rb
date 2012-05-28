class Api::V1::ReadingListsController < Api::V1::BaseController

  respond_to :json, :csv

  def show
    @books = exhibit(ReadingList.find(params[:id]), self)
    respond_with(@books)
  end

end
