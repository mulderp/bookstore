require 'spec_helper'

describe Api::V1::BooksController do

  before do
    @book = Factory(:book)
  end

  describe "/api/v1/books", :type => :api do

    let(:url) { "api/v1/books" }

    it "json" do

      get "#{url}.json"
      books_json = Book.all.to_json
      last_response.body.should eql(books_json)
      last_response.status.should eql(200)

      books = JSON.parse(last_response.body)


    end

  end

end
