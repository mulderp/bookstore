class UserExhibit < DisplayCase::Exhibit

  def self.applicable_to?(object)
    Rails.logger.info("**** #{object}")
    object_is_any_of?(object, 'User', 'NilClass')
  end

  def render_navigation_profile(template)
    if self.class == NilClass
      template.render :partial => 'shared/signup'
    else
      template.render :partial => 'shared/signedin'
    end
  end

end
