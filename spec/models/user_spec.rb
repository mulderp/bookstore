require 'spec_helper'

describe User do

  describe "works_for" do
    it "attach user to publisher" do
      publisher = Publisher.prototype(:name => "penguin")
      user = User.prototype

      user.extend Employable

      user.works_for(publisher)
      publisher.employees.should == [ user ]
    end
  end

  

end
