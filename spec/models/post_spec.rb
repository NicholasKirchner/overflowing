require 'spec_helper'

describe Post do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:image_url) }

  let(:post) { FactoryGirl.create(:post) }
  let(:vote) { FactoryGirl.create(:vote) }
  let(:down_vote) { FactoryGirl.create(:down_vote) }

  subject { post }

  it { should respond_to(:title) }
  it { should respond_to(:image_url) }
  it { should respond_to(:user) }
  it { should respond_to(:comments) }
  it { should respond_to(:votes) }
  it { should respond_to(:total_votes)}
  it { should be_valid }
  
  describe '#total_votes' do
    it "should return 0 if post has no votes" do
      post.total_votes.should == 0
    end

    it "should add up total votes for a post" do
      post.votes << vote
      post.votes << down_vote
      post.total_votes.should == 0
    end
  end
end
