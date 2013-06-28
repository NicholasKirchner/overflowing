require 'rspec'

describe Post do

  let(:post) {user.posts.create(title: "sweet gif", 
                          image_url: "lolcats.com")}
    let(:post_vote) {user.votes.create(votable_id: comment.id, 
                          votable_type: "Comment", 
                          value: 1)}

  let(:post_vote_dup) {user.votes.create(votable_id: comment.id, 
                          votable_type: "Comment", 
                          value: 1)}

  it "should return its total number of votes" do
    4.times do post
  end

end
