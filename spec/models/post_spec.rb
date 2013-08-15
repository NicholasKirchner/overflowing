require 'spec_helper'

describe Post do

  let(:post) { FactoryGirl.create(:post) }

  subject { post }

  it { should respond_to(:title) }
  it { should respond_to(:image_url) }
  it { should respond_to(:user) }
  it { should respond_to(:comments) }
  it { should respond_to(:votes) }

  # let(:post) {user.posts.create(title: "sweet gif", 
  #                         image_url: "lolcats.com")}
  #   let(:post_vote) {user.votes.create(votable_id: comment.id, 
  #                         votable_type: "Comment", 
  #                         value: 1)}

  # let(:post_vote_dup) {user.votes.create(votable_id: comment.id, 
  #                         votable_type: "Comment", 
  #                         value: 1)}

#   it "should return its total number of votes" do
#     4.times do post
#   end
# end

end
