require 'spec_helper'

describe Comment do
  it { should validate_presence_of :content }

  let(:comment) { FactoryGirl.create()}
end