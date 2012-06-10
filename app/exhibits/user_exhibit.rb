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

  def render_root_path(template)
    template.link_to "Bookstore", root_path, :class => "brand"
  end

end
