class BookExhibit < DisplayCase::Exhibit
  def self.applicable_to?(object)
    Rails.logger.debug("app/exhibiit #{object}")
    object_is_any_of?(object, 'Book')
  end

  def render_book(template)
    Rails.logger.info(template.class)
    template.render(:partial => 'shared/book', :locals => { :book => __getobj__})
  end
end
