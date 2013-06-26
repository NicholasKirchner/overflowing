require 'spec_helper'

describe User do
#  let(:user) {User.create(name:"bob")}

  context "#create" do
    it "should work when given name, email and password" do
      expect(user).to_not be_nil
    end
  end
end
