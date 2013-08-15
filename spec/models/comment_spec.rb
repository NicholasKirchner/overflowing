require 'spec_helper'

describe Comment do
  let(:comment) { FactoryGirl.create(:comment) }
  
  it { should validate_presence_of :content }

  subject { comment }
    it { should respond_to :post }
    it { should respond_to :user }
    it { should respond_to :votes }
end