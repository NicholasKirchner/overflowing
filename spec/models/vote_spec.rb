require 'spec_helper'

describe Vote do

  let(:user) {User.create(name: "maria", 
                          email: "maria@gmail.com", 
                          password: "password")}

  let(:post) {user.posts.create(title: "sweet gif", 
                          image_url: "lolcats.com")}

  let(:comment) {post.comments.create(content: "awesome post")}

  let(:comment_vote) {user.votes.create(votable_id: comment.id, 
                          votable_type: "Comment", 
                          value: 1)}

  let(:comment_vote_dup) {user.votes.create(votable_id: comment.id, 
                          votable_type: "Comment", 
                          value: 1)}

  let(:post_vote) {user.votes.create(votable_id: comment.id, 
                          votable_type: "Comment", 
                          value: 1)}

  let(:post_vote_dup) {user.votes.create(votable_id: comment.id, 
                          votable_type: "Comment", 
                          value: 1)}

  let(:invalid_vote) {Vote.create(votable_id: comment.id, 
                                 votable_type: "Catss!!!", 
                                 value: 1)}


  it "should not allow user vote on the same comment more than once" do
    comment_vote
    expect(comment_vote_dup.id).to be_nil
  end

  it "should not allow user vote on the same post more than once" do
    post_vote
    expect(post_vote_dup.id).to be_nil
  end

  it "should not allow voteable types other than Post and Comment" do
    invalid_vote.valid?
    expect(invalid_vote.errors.full_messages.first).to be {"Votable type is invalid"}
  end

  it "should have a value" do
    expect(post_vote.value).to_not be_nil 
  end

  



end
