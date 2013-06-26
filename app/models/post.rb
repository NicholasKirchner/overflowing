class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :image_url

  validates :title, :image_url, :presence => true
end
