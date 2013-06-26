class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  attr_accessible :title, :image_url

  validates :title, :image_url, presence: true
end
