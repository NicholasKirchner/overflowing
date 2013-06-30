class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :user
	attr_accessible :content
	has_many :votes, :as => :votable
	
	validates :content, presence: true

	def total_votes
    # post = Post.find(post_id)
    return 0 if votes.empty?
    votes.inject(0) { |sum, vote| sum + vote.value}
  end
end
