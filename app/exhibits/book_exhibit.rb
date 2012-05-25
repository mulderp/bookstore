class BookExhibit < DisplayCase::Exhibit
  def self.applicable_to?(object)
    Rails.logger.debug("app/exhibiit #{object}")
    object_is_any_of?(object, 'Book')
  end
end
