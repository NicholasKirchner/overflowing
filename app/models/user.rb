class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes
  attr_accessible :name, :email, :password, :password_confirmation
  
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

end
