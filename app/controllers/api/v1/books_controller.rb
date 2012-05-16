require 'display-case/enumerable_exhibit'
require 'display-case/exhibit'
require 'display-case/exhibits_helper'

class Api::V1::BooksController < Api::V1::BaseController

  respond_to :json, :csv

  include ExhibitsHelper

  def index
    @books = exhibit(Book.all, self)
    respond_with(@books)
  end

end
