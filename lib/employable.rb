module Employable

  def works_for(publisher)
    publisher.employees << self
  end

end
