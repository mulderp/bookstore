class Api::V1::BooksController < Api::V1::BaseController

  respond_to :json, :csv

  def index
    @books = exhibit(Book.all, self)
    respond_with(@books)
  end

end
