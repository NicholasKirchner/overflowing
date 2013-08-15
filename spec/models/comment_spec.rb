require 'spec_helper'

describe Comment do
  let(:comment) { FactoryGirl.create(:comment) }
  let(:vote) { FactoryGirl.create(:vote) }
  let(:down_vote) { FactoryGirl.create(:down_vote) }

  it { should validate_presence_of :content }

  subject { comment }
    it { should respond_to :post }
    it { should respond_to :user }
    it { should respond_to :votes }

  describe '#total_votes' do
    it "should return 0 if post has no votes" do
      comment.total_votes.should == 0
    end

    it "should add up total votes for a post" do
      comment.votes << vote
      comment.votes << down_vote
      comment.total_votes.should == 0
    end
  end
end