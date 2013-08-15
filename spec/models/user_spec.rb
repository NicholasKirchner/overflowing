require 'spec_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :password }
  it { should validate_uniqueness_of :email }

  let(:user) { FactoryGirl.create(:user) }
  subject { user }
    it { should respond_to :name }
    it { should respond_to :email }
    it { should respond_to :posts }
    it { should respond_to :comments }
    it { should respond_to :votes }
    it { should be_valid }
end
