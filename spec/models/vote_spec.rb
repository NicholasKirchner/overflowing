require 'spec_helper'

describe Vote do
  let(:vote) { FactoryGirl.create(:vote) }
  let(:comment) { create(:comment) }
  let(:post) { comment.post }
  let(:user) { create(:user) }

  subject { vote }
    it { should respond_to :user }
    it { should respond_to :value }

  let!(:post_vote) {create(:vote, votable_id: post.id, votable_type: "Post", user_id: user.id)}
  let(:post_vote_dup) {build(:vote, votable_id: post.id, votable_type: "Post", user_id: user.id)}

  let!(:comment_vote) {create(:vote, votable_id: comment.id, votable_type: "Comment", user_id: user.id)}
  let(:comment_vote_dup) {build(:vote, votable_id: comment.id, votable_type: "Comment", user_id: user.id)}
  
  let(:invalid_vote) {build(:vote, votable_type: "Catss!!!")}

  it "should not allow user vote on the same comment more than once" do
    expect(comment_vote_dup).to_not be_valid
  end

  it "should not allow user vote on the same post more than once" do
    expect(post_vote_dup).to_not be_valid
  end

  it "should not allow voteable types other than Post and Comment" do
    invalid_vote.save  
    expect(invalid_vote.errors.full_messages).to include "Votable type is invalid"
  end
end
