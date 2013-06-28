class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :content
  has_many :votes, :as => :votable
  
  validates :content, presence: true
end
