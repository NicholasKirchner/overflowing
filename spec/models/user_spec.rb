require 'spec_helper'

describe User do

  before do
    @user = User.new(name:"bob", email: "bob@bob.com", password: "fred")
  end
  
  context "create" do
    it "should work when given name, email and password" do
      expect(@user).to be_valid
    end

    it "should not work when name is not given" do
      @user.name = ""
      expect(@user).to_not be_valid
    end

    it "should not work when email is not given" do
      @user.email = ""
      expect(@user).to_not be_valid
    end

    it "should not work when password is not given" do
      @user.password = ""
      expect(@user).to_not be_valid
    end

    it "should not allow duplicate emails" do
      user_dup_email = @user.dup
      @user.save
      expect(user_dup_email).to_not be_valid  
    end

  end
end
