module ApplicationHelper
  def exhibit(construct, context)
    DisplayCase::ExhibitsHelper.exhibit(construct, context)
  end
end
