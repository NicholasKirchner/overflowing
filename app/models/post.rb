class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes, :as => :votable
  
  attr_accessible :title, :image_url

  validates :title, :image_url, presence: true

  def total_votes
    # post = Post.find(post_id)
    return 0 if votes.empty?
    votes.inject(0) { |sum, vote| sum + vote.value}
  end
end
