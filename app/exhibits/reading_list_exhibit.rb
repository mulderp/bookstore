class ReadingListExhibit < Exhibit

  def self.applicable_to?(object)
    Rails.logger.debug("app/exhibiit #{object}")
    object_is_any_of?(object, 'ReadingList')
  end

  def to_json(options={})
    output = "["
    books[0..-2].each do |book|
      output << " { \"book\": #{book.to_json}"
      output << " },\n"
    end
    output << " book: { #{books[-1].to_json} } "
    output << "]"
  end

  def to_csv(options={})
    output = ""
    books.each do |book|
      output << "\"#{book.title}\", \"#{book.author}\", \"#{book.publisher}\" \n"
    end
    output
  end

  def render_navigation(template)
    template.render(:partial => "shared/reading_list_navigation", :locals => { :other_reading_lists => ReadingList.without_current(__getobj__) })
  end

  def render_books(template)
    template.render(:partial => "shared/book", :collection => self.books)
  end

  def render_overview(template)
    template.render(:partial => 'shared/reading_list', :object => __getobj__) 
  end
end
