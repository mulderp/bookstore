require 'display-case/exhibit'

class ReadingListExhibit < Exhibit

  def self.applicable_to?(object)
    Rails.logger.debug("app/exhibiit #{object}")
    object_is_any_of?(object, 'ReadingList')
  end

  def to_json(options={})
    output = ""
    books.each do |book|
      output << " { \"book\": #{book.to_json}"
      output << " }"
    end
    output
  end

  def to_csv(options={})
    output = ""
    books.each do |book|
      output << "\"#{book.title}\", \"#{book.author}\", \"#{book.publisher}\" \n"
    end
    output
  end

  def render_books(template)
    template.render(:partial => "shared/book", :collection => self.books)
  end
end
